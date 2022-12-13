#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main
LIBRARY=$1
PKG=$2
mkdir -p $LIBRARY
mkdir -p /tmp/tars/
sed -n "/^    \"$PKG\"/,/^    \"/p" alldeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/deps
# if [ -s /tmp/deps ]; then cat /tmp/deps | xargs -i cat lists/{} | xargs -i bash -c "curl -o $LIBRARY/{} https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/container/{} && ( cd $LIBRARY && tar -xvf {} && rm {} )"; else echo "No dependencies"; fi

if [ -s /tmp/deps ]; then cat /tmp/deps | xargs -I## bash -c 'if [ -d $LIBRARY/## ]; then echo "Dependency ## is already found."; else cat lists/## | xargs -i bash -c "curl -o $LIBRARY/{} https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/container/{} && ( cd $LIBRARY && tar -xvf {} && rm {} )"; fi'; else echo "No dependencies"; fi

Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" > /tmp/$PKG 2>&1
# CRAN=0
# if ! git clone https://git.bioconductor.org/packages/$PKG
# then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#     then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#         then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#             then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#                 then
#                     CRAN=1
#                     Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" > /tmp/$PKG 2>&1
#                 fi
#             fi
#         fi
#     fi
# fi
# if [ $CRAN = 0 ]; then Rscript -e "p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); install.packages('$(pwd)/$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE, type = 'source', repos = NULL); if('$PKG' %in% rownames(installed.packages())) q(status = 0) else q(status = 1)"; fi > /tmp/$PKG 2>&1 

# CRAN=0
# if ! git clone https://git.bioconductor.org/packages/$PKG
# then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#     then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#         then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#             then sleep 5 && if ! git clone https://git.bioconductor.org/packages/$PKG
#                 then
#                     CRAN=1
#                     Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" > /tmp/$PKG 2>&1
#                 fi
#             fi
#         fi
#     fi
# fi
# if [ $CRAN = 0 ]; then Rscript -e "p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); install.packages('$(pwd)/$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE, type = 'source', repos = NULL); if('$PKG' %in% rownames(installed.packages())) q(status = 0) else q(status = 1)"; fi > /tmp/$PKG 2>&1 

echo "\n\nBinary Build log:\n"
cat /tmp/$PKG
cp *.tar.gz /tmp/tars/
