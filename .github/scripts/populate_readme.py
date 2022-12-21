import json, yaml
from os.path import exists
from tabulate import tabulate
with open("alldeps.json", "r") as f:
    pkgs = json.load(f)
import requests, time, humanize

tables = {"Failed": [], "Unclaimed": [], "Succeeded": []}

for pkg in list(pkgs):
    name = pkg
    runid = ""
    runurl = ""
    status = "Unclaimed"
    tarname = ""
    tartext = ""
    plog = ""
    if exists(f"logs/run_ids/rstudio-binaries/{pkg}"):
        with open(f"logs/run_ids/rstudio-binaries/{pkg}", "r") as frun:
            runid = frun.read()
            runurls = runid.strip().replace("null\n", "").split("\n")
            runurl = ""
            for u in runurls:
                if "github.com" in u:
                    runurl = u
            if not runurl:
                runurl = runurls[-1]
            if "github.com" not in runurl:
                runurl = f"https://github.com/{runurl}"
            name = f"[{pkg}]({runurl})"
    if exists(f"lists/failed/{pkg}"):
        status = "Failed"
        tarname = f"https://github.com/almahmoud/gha-build/blob/main/lists/failed/{pkg}"
    elif exists(f"lists/{pkg}"):
        with open(f"lists/{pkg}", "r") as pf:
            plog = pf.read()
    if plog.endswith("tar.gz\n"):
        status = "Succeeded"
        tarname = plog.strip()
        sizeinfo = ""
        if exists(f"logs/sizes/rstudio-binaries/binaries/{pkg}"):
            with open(f"logs/sizes/rstudio-binaries/binaries/{pkg}", "r") as sf:
                sizeinfo = sf.read()
        tartext = ""
        if sizeinfo:
            size_b = int(sizeinfo.split(" ")[0])
            tartext = f"{humanize.naturalsize(size_b)} {tarname}"
        if not tartext:
            tartext = tarname
        tartext = f"[{tartext}](https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/rstudio-binaries/{tarname})"
    if not tartext:
        tartext = tarname
    tables[status].append([name, status, tartext])

for each in tables["Failed"]:
    logurl = each[2]
    each[2] = f"[Build Log]({logurl})"
    rawurl = logurl.replace("github.com", "raw.githubusercontent.com").replace("blob/", "")
    r = requests.get(rawurl)
    name = each[0]
    pkg = name[name.find('[')+1:name.find(']')]
    retries = 0
    while retries <= 5 and r.status_code != 200:
        r = requests.get(rawurl)
        retries += 1
        time.sleep(5)
    if r.status_code == 200:
        logtext = r.content
        # Check CRAN archived
        if bytes(f"package ‘{pkg}’ is not available for Bioconductor version", "utf-8") in logtext:
            cranurl = f"https://cran.r-project.org/web/packages/{pkg}/index.html"
            r = requests.get(cranurl)
            retries = 0
            while retries <= 5 and r.status_code != 200:
                r = requests.get(rawurl)
                retries += 1
                time.sleep(5)
            if r.status_code == 200:
                crantext = r.content.decode("utf-8")
                if "Archived on " in crantext:
                    archivetext = crantext[crantext.find("Archived on"):]
                    archivetext = archivetext[:archivetext.find("\n")]
                    each.append(f"[CRAN Package '{pkg}']({cranurl}) archived. Extracted text: {archivetext}")

        # Check missing dependency
        if bytes("there is no package called", "utf-8") in logtext:
            tofind = bytes("there is no package called ‘", "utf-8")
            missingtext = logtext[logtext.find(tofind)+len(tofind):]
            missingtext = missingtext[:missingtext.find(bytes("’", "utf-8"))]
            each.append(f"Undeclared R dependency: '{missingtext.decode('utf-8')}'")
        if bytes(f"ERROR: dependency", "utf-8") in logtext:
            tofind = bytes("ERROR: dependency ‘", "utf-8")
            missingtext = logtext[logtext.find(tofind)+len(tofind):]
            missingtext = missingtext[:missingtext.find(bytes("’", "utf-8"))]
            each.append(f"Undeclared R dependency: '{missingtext.decode('utf-8')}'")

    # Check BBS status
    bbsurl = f"https://bioconductor.org/checkResults/release/bioc-LATEST/{pkg}/raw-results/nebbiolo2/buildsrc-summary.dcf"
    r = requests.get(bbsurl)
    bbs_status = ""
    retries = 0
    if "CRAN Package" not in each[-1]:
        while retries <= 5 and r.status_code != 200:
            r = requests.get(bbsurl)
            retries += 1
            time.sleep(5)
        if r.status_code == 200:
            bbs_summary = r.content.decode("utf-8")
            bbs_status = yaml.safe_load(bbs_summary).get("Status", "Unknown")
        if not bbs_status:
            bbs_status = "Failed retrieving"
        else:
            bbs_status = f"[{bbs_status}]({bbsurl.replace('/raw-results/nebbiolo2/buildsrc-summary.dcf', '')})"
        each.insert(2, bbs_status)
    else:
        each.insert(2, "N/A: CRAN Package")


tables["Failed"] = [x if len(x)>4 else x+["Error unknown"] for x in tables["Failed"]]
tables["Failed"].sort(key=lambda x: x[4])

headers = ["Package", "Status", "Tarball"]
failedheaders = ["Package", "Status", "BBS Status", "Log", "Known Error"]
with open("README.md", "w") as f:
    f.write(f"# Summary\n\n{len(tables['Succeeded'])} built packages\n\n{len(tables['Failed'])} failed packages\n\n{len(tables['Unclaimed'])} unclaimed packages\n\n")
    f.write(f"\n\n## Failed ({len(tables['Failed'])})\n")
    f.write(tabulate(tables["Failed"], failedheaders, tablefmt="github"))
    f.write(f"\n\n## Unclaimed ({len(tables['Unclaimed'])})\n")
    f.write(tabulate(tables["Unclaimed"], headers, tablefmt="github"))
    f.write(f"\n\n## Succeeded ({len(tables['Succeeded'])})\n")
    f.write(tabulate(tables["Succeeded"], headers, tablefmt="github"))
