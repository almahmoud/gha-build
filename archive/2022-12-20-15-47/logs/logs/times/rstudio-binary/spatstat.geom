+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   75c5516e..99231fc0  main       -> origin/main
Updating 75c5516e..99231fc0
Fast-forward
 lists/RcppML                                       |    2 +-
 lists/gld                                          |    2 +-
 lists/hyperdraw                                    |    2 +-
 lists/ontologyPlot                                 |    2 +-
 .../sizes/rstudio-binaries/binaries/ontologyPlot   |    1 +
 .../sizes/rstudio-binaries/libraries/ontologyPlot  |    1 +
 logs/logs/times/rstudio-binary/ontologyPlot        | 2503 ++++++++++++++++++++
 logs/run_ids/rstudio-binaries/rsparse              |    2 +
 logs/run_ids/rstudio-binaries/seriation            |    2 +
 packages.json                                      |   48 -
 10 files changed, 2513 insertions(+), 52 deletions(-)
 create mode 100644 logs/logs/sizes/rstudio-binaries/binaries/ontologyPlot
 create mode 100644 logs/logs/sizes/rstudio-binaries/libraries/ontologyPlot
 create mode 100644 logs/logs/times/rstudio-binary/ontologyPlot
+ LIBRARY=/__w/gha-build/gha-build/built/
+ PKG=spatstat.geom
+ runstart=
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ sed -n '/^    "spatstat.geom"/,/^    "/p' directdeps.json
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ '[' -s /tmp/deps ']'
+ cat /tmp/deps
+ xargs -I## bash -c 'if [ -d /__w/gha-build/gha-build/built//## ]; then echo '\''Dependency ## is already found.'\''; else cat lists/## | xargs -i bash -c '\''curl -o /__w/gha-build/gha-build/built//{} https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/running//{} && ( cd /__w/gha-build/gha-build/built/ && tar -xvf {} && rm {} )'\''; fi'
cat: lists/spatstat.data: No such file or directory
Dependency deldir is already found.
Dependency polyclip is already found.
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''spatstat.geom'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv spatstat.data_3.0-0_R_x86_64-pc-linux-gnu.tar.gz spatstat.geom_3.0-3_R_x86_64-pc-linux-gnu.tar.gz spatstat.utils_3.0-1_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/spatstat.geom
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'spatstat.geom'
also installing the dependencies ‘spatstat.data’, ‘spatstat.utils’

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.data_3.0-0.tar.gz'
Content type 'binary/octet-stream' length 4096162 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.utils_3.0-1.tar.gz'
Content type 'binary/octet-stream' length 390313 bytes (381 KB)
==================================================
downloaded 381 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.geom_3.0-3.tar.gz'
Content type 'binary/octet-stream' length 4084376 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

* installing *binary* package ‘spatstat.utils’ ...
* ‘spatstat.utils’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.utils’ as ‘spatstat.utils_3.0-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.utils)
* installing *binary* package ‘spatstat.data’ ...
* ‘spatstat.data’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.data’ as ‘spatstat.data_3.0-0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.data)
* installing *binary* package ‘spatstat.geom’ ...
* ‘spatstat.geom’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.geom’ as ‘spatstat.geom_3.0-3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.geom)

The downloaded source packages are in
	‘/tmp/RtmpCovY5z/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'
5.79user 0.46system 0:10.72elapsed 58%CPU (0avgtext+0avgdata 145632maxresident)k
1080inputs+100264outputs (8major+104736minor)pagefaults 0swaps
