+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   7288e5fc..226acb68  main       -> origin/main
Updating 7288e5fc..226acb68
Fast-forward
 lists/ellipsis  |    2 +-
 lists/triebeard |    2 +-
 packages.json   | 1336 +------------------------------------------------------
 3 files changed, 5 insertions(+), 1335 deletions(-)
+ export LIBRARY=/__w/gha-build/gha-build/built/
+ LIBRARY=/__w/gha-build/gha-build/built/
+ export PKG=lambda.r
+ PKG=lambda.r
+ export runstart=2022-12-23-11-26
+ runstart=2022-12-23-11-26
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ sed -n '/^    "lambda.r"/,/^    "/p' directdeps.json
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ export -f process_dep
+ '[' -s /tmp/deps ']'
+ process_deps
+ cat /tmp/deps
+ xargs -i bash -c 'process_dep {}'
Dependency formatR is already found.
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''lambda.r'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv lambda.r_1.2.4_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/lambda.r
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'lambda.r'
trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/lambda.r_1.2.4.tar.gz'
Content type 'binary/octet-stream' length 109336 bytes (106 KB)
==================================================
downloaded 106 KB

* installing *binary* package ‘lambda.r’ ...
* ‘lambda.r’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘lambda.r’ as ‘lambda.r_1.2.4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (lambda.r)

The downloaded source packages are in
	‘/tmp/RtmpwhAuRP/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'

real	0m6.468s
user	0m3.770s
sys	0m0.315s
