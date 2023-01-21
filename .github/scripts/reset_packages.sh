#!/bin/bash
Rscript .github/scripts/deps_json.R packages.json directdeps.json
python3 -c """
import json
f = open('packages.json', 'r')
pkgs = json.load(f)
for pkg in pkgs:
    pkgs.get(pkg, []).sort()
f.close()
f = open('packages.json', 'w')
f.write(json.dumps(pkgs, indent=4))
f.close()"""
cp packages.json alldeps.json
echo "$(TZ=EST date '+%Y-%m-%d-%H-%M')" > runstarttime
bash .github/scripts/get_container_name.sh > containername
echo "&bioc.ARCH" > arch
git config --global --add safe.directory "$GITHUB_WORKSPACE"
git config user.email "action@github.com"
git config user.name "GitHub Action"
git add .
git commit -m "Reset packages"
git push