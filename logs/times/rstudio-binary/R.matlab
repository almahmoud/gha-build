+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   16bf2777..6e0900e0  main       -> origin/main
Updating 16bf2777..6e0900e0
Fast-forward
 lists/OLIN                              | 2 +-
 logs/run_ids/rstudio-binaries/R.devices | 2 ++
 logs/run_ids/rstudio-binaries/ppclust   | 2 ++
 logs/run_ids/rstudio-binaries/ragg      | 2 ++
 packages.json                           | 5 +----
 5 files changed, 8 insertions(+), 5 deletions(-)
 create mode 100644 logs/run_ids/rstudio-binaries/R.devices
 create mode 100644 logs/run_ids/rstudio-binaries/ppclust
 create mode 100644 logs/run_ids/rstudio-binaries/ragg
+ export LIBRARY=/__w/gha-build/gha-build/built/
+ LIBRARY=/__w/gha-build/gha-build/built/
+ export PKG=R.matlab
+ PKG=R.matlab
+ export runstart=2022-12-23-11-26
+ runstart=2022-12-23-11-26
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ sed -n '/^    "R.matlab"/,/^    "/p' directdeps.json
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ export -f process_dep
+ '[' -s /tmp/deps ']'
+ process_deps
+ xargs -i bash -c 'process_dep {}'
+ cat /tmp/deps
Dependency R.utils is already found.
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''R.matlab'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv R.matlab_3.7.0_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/R.matlab
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'R.matlab'
trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/R.matlab_3.7.0.tar.gz'
Content type 'binary/octet-stream' length 272395 bytes (266 KB)
==================================================
downloaded 266 KB

* installing *binary* package ‘R.matlab’ ...
* ‘R.matlab’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.matlab’ as ‘R.matlab_3.7.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.matlab)

The downloaded source packages are in
	‘/tmp/RtmpTkuZEZ/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'

real	0m7.036s
user	0m3.971s
sys	0m0.468s
