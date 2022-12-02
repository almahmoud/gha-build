import json
from os.path import exists
from tabulate import tabulate
with open("original.json", "r") as f:
    pkgs = json.load(f)
import requests, time

tables = {"Failed": [], "Unclaimed": [], "Succeeded": []}

for pkg in list(pkgs):
    name = pkg
    runid = ""
    runurl = ""
    status = "Unclaimed"
    tarname = ""
    plog = ""
    if exists(f"logs/run_ids/container/{pkg}"):
        with open(f"logs/run_ids/container/{pkg}", "r") as frun:
            runid = frun.read()
            runurls = runid.strip().replace("null\n", "").split("\n")
            runurl = ""
            for u in runurls:
                if "github.com" in u:
                    runurl = u
            if not runurl:
                runurl = runurls[-1]
            name = f"[{pkg}]({runurl})"
    # if "https://github.com/" in runid:
    #     runurl = runid.strip().replace("null\n", "").split("\n")[-1]
    #     r = requests.get(runurl)
    #     while r.status_code not in [404, 200]:
    #         r = requests.get(runurl)
    #     if r.status_code == 404:
    #         runurl = runurl.replace("gha-build", "gha-build-old")
    #         while r.status_code not in [404, 200]:
    #             r = requests.get(runurl)
    #     if r.status_code == 200:
    #         name = f"[{pkg}]({runurl})"
    if exists(f"lists/failed/{pkg}"):
        status = "Failed"
        tarname = f"https://github.com/almahmoud/gha-build/blob/main/lists/failed/{pkg}"
    elif exists(f"lists/{pkg}"):
        with open(f"lists/{pkg}", "r") as pf:
            plog = pf.read()
    if plog.endswith("tar.gz\n"):
        status = "Succeeded"
        tarname = plog.strip()
        tarname = f"[{tarname}](https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/container/{tarname})"
    tables[status].append([name, status, tarname])\

for each in tables["Failed"]:
    logurl = each[2]
    each[2] = f"[Build Log]({logurl})"
    rawurl = logurl.replace("github.com", "raw.githubusercontent.com").replace("blob/", "")
    r = requests.get(rawurl)
    retries = 0
    while retries <= 5 and r.status_code != 200:
        r = requests.get(rawurl)
        retries += 1
        time.sleep(5)
    if r.status_code == 200:
        logtext = r.content
        name = each[0]
        pkg = name[name.find('[')+1:name.find(']')]
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


tables["Failed"] = [x if len(x)>3 else x+["Error unknown"] for x in tables["Failed"]]
tables["Failed"].sort(key=lambda x: x[3])

headers = ["Package", "Status", "Tarball"]
failedheaders = ["Package", "Status", "Log", "Known Error"]
with open("README.md", "w") as f:
    f.write(f"# Summary\n\n{len(tables['Succeeded'])} built packages\n\n{len(tables['Failed'])} failed packages\n\n{len(tables['Unclaimed'])} unclaimed packages\n\n")
    f.write(f"\n\n## Failed ({len(tables['Failed'])})\n")
    f.write(tabulate(tables["Failed"], failedheaders, tablefmt="github"))
    f.write(f"\n\n## Succeeded ({len(tables['Succeeded'])})\n")
    f.write(tabulate(tables["Succeeded"], headers, tablefmt="github"))
    f.write(f"\n\n## Unclaimed ({len(tables['Unclaimed'])})\n")
    f.write(tabulate(tables["Unclaimed"], headers, tablefmt="github"))
