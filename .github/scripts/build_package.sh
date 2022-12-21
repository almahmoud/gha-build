#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main
LIBRARY=$1
PKG=$2
runstart=$3
mkdir -p $LIBRARY
mkdir -p /tmp/tars/

# Get direct dependency list to pull their libraries from their build run
sed -n "/^    \"$PKG\"/,/^    \"/p" directdeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/deps
if [ -s /tmp/deps ]; then cat /tmp/deps | xargs -I## bash -c "if [ -d $LIBRARY/## ]; then echo 'Dependency ## is already found.'; else cat lists/## | xargs -i bash -c 'curl -o $LIBRARY/{} https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/running/$runstart/{} && ( cd $LIBRARY && tar -xvf {} && rm {} )'; fi"; else echo "No dependencies"; fi

Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" > /tmp/$PKG 2>&1

mv *.tar.gz /tmp/tars/

echo "\n\nBinary Build log:\n"
cat /tmp/$PKG

