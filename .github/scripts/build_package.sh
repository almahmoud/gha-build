#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main
export LIBRARY=$1
export PKG=$2
export runstart=$3
mkdir -p $LIBRARY
mkdir -p /tmp/tars/

# Get direct dependency list to pull their libraries from their build run
sed -n "/^    \"$PKG\"/,/^    \"/p" directdeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/deps

function process_dep() {
  if [ -d $LIBRARY/$1 ]; then
    echo "Dependency $1 is already found."
    return
  else
  	bash -c "curl -o $LIBRARY/$1.tar.gz https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/running/$runstart/$1.tar.gz && ( cd $LIBRARY && tar -xvf $1.tar.gz && rm $1.tar.gz )"
  fi
}

export -f process_dep

function process_deps() {
  cat /tmp/deps | xargs -i bash -c "process_dep {}"
}

if [ -s /tmp/deps ]; then
  process_deps
else
  echo "No dependencies"
fi


Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" > /tmp/$PKG 2>&1

mv *.tar.gz /tmp/tars/

echo "\n\nBinary Build log:\n"
cat /tmp/$PKG

