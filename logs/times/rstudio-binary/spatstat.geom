+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   07c2946f..58daf910  main       -> origin/main
Updating 07c2946f..58daf910
Fast-forward
 lists/ROCR                                 |  2 +-
 lists/logitT                               |  2 +-
 logs/run_ids/rstudio-binaries/strucchange  |  2 +
 logs/sizes/rstudio-binaries/binaries/ROCR  |  1 +
 logs/sizes/rstudio-binaries/libraries/ROCR |  1 +
 logs/times/rstudio-binary/ROCR             | 63 +++++++++++++++++++++++++++
 packages.json                              | 68 ++----------------------------
 7 files changed, 72 insertions(+), 67 deletions(-)
 create mode 100644 logs/run_ids/rstudio-binaries/strucchange
 create mode 100644 logs/sizes/rstudio-binaries/binaries/ROCR
 create mode 100644 logs/sizes/rstudio-binaries/libraries/ROCR
 create mode 100644 logs/times/rstudio-binary/ROCR
+ export LIBRARY=/__w/gha-build/gha-build/built/
+ LIBRARY=/__w/gha-build/gha-build/built/
+ export PKG=spatstat.geom
+ PKG=spatstat.geom
+ export runstart=2022-12-23-11-26
+ runstart=2022-12-23-11-26
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ sed -n '/^    "spatstat.geom"/,/^    "/p' directdeps.json
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ export -f process_dep
+ '[' -s /tmp/deps ']'
+ process_deps
+ xargs -i bash -c 'process_dep {}'
+ cat /tmp/deps
Dependency spatstat.data is already found.
Dependency deldir is already found.
Dependency polyclip is already found.
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''spatstat.geom'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv spatstat.geom_3.0-3_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/spatstat.geom
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'spatstat.geom'
trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.geom_3.0-3.tar.gz'
Content type 'binary/octet-stream' length 4084376 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

* installing *binary* package ‘spatstat.geom’ ...
* ‘spatstat.geom’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.geom’ as ‘spatstat.geom_3.0-3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.geom)

The downloaded source packages are in
	‘/tmp/RtmpqlFtHu/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'

real	0m5.800s
user	0m4.008s
sys	0m0.478s
