+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   102e147d..a680bd3a  main       -> origin/main
Updating 102e147d..a680bd3a
Fast-forward
 lists/RBM                                 |    1 +
 lists/RCX                                 |    1 +
 logs/run_ids/rstudio-binaries/scam        |    2 +
 logs/sizes/rstudio-binaries/binaries/RBM  |    1 +
 logs/sizes/rstudio-binaries/binaries/RCX  |    1 +
 logs/sizes/rstudio-binaries/libraries/RBM |    1 +
 logs/sizes/rstudio-binaries/libraries/RCX |    1 +
 logs/times/rstudio-binary/RBM             |  257 ++++++
 logs/times/rstudio-binary/RCX             | 1291 +++++++++++++++++++++++++++++
 packages.json                             |    3 -
 10 files changed, 1556 insertions(+), 3 deletions(-)
 create mode 100644 lists/RBM
 create mode 100644 lists/RCX
 create mode 100644 logs/run_ids/rstudio-binaries/scam
 create mode 100644 logs/sizes/rstudio-binaries/binaries/RBM
 create mode 100644 logs/sizes/rstudio-binaries/binaries/RCX
 create mode 100644 logs/sizes/rstudio-binaries/libraries/RBM
 create mode 100644 logs/sizes/rstudio-binaries/libraries/RCX
 create mode 100644 logs/times/rstudio-binary/RBM
 create mode 100644 logs/times/rstudio-binary/RCX
+ export LIBRARY=/__w/gha-build/gha-build/built/
+ LIBRARY=/__w/gha-build/gha-build/built/
+ export PKG=R.matlab
+ PKG=R.matlab
+ export runstart=2022-12-21-14-37
+ runstart=2022-12-21-14-37
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ sed -n '/^    "R.matlab"/,/^    "/p' directdeps.json
+ export -f process_dep
+ '[' -s /tmp/deps ']'
+ process_deps
+ xargs -i bash -c 'process_dep {}'
+ cat /tmp/deps
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  1 3377k    1 65280    0     0  88543      0  0:00:39 --:--:--  0:00:39 88455 11 3377k   11  401k    0     0   228k      0  0:00:14  0:00:01  0:00:13  228k 27 3377k   27  927k    0     0   339k      0  0:00:09  0:00:02  0:00:07  339k 50 3377k   50 1708k    0     0   456k      0  0:00:07  0:00:03  0:00:04  456k 79 3377k   79 2696k    0     0   569k      0  0:00:05  0:00:04  0:00:01  569k100 3377k  100 3377k    0     0   637k      0  0:00:05  0:00:05 --:--:--  726k
built/
built/built/
built/built/R.methodsS3/
built/built/R.methodsS3/NAMESPACE
built/built/R.methodsS3/DESCRIPTION
built/built/R.methodsS3/help/
built/built/R.methodsS3/help/paths.rds
built/built/R.methodsS3/help/R.methodsS3.rdx
built/built/R.methodsS3/help/R.methodsS3.rdb
built/built/R.methodsS3/help/aliases.rds
built/built/R.methodsS3/help/AnIndex
built/built/R.methodsS3/Meta/
built/built/R.methodsS3/Meta/package.rds
built/built/R.methodsS3/Meta/features.rds
built/built/R.methodsS3/Meta/hsearch.rds
built/built/R.methodsS3/Meta/links.rds
built/built/R.methodsS3/Meta/nsInfo.rds
built/built/R.methodsS3/Meta/Rd.rds
built/built/R.methodsS3/WORDLIST
built/built/R.methodsS3/CITATION
built/built/R.methodsS3/html/
built/built/R.methodsS3/html/00Index.html
built/built/R.methodsS3/html/R.css
built/built/R.methodsS3/INDEX
built/built/R.methodsS3/R/
built/built/R.methodsS3/R/R.methodsS3.rdx
built/built/R.methodsS3/R/R.methodsS3.rdb
built/built/R.methodsS3/R/R.methodsS3
built/built/R.methodsS3/NEWS.md
built/built/R.oo/
built/built/R.oo/NAMESPACE
built/built/R.oo/DESCRIPTION
built/built/R.oo/help/
built/built/R.oo/help/paths.rds
built/built/R.oo/help/aliases.rds
built/built/R.oo/help/R.oo.rdb
built/built/R.oo/help/AnIndex
built/built/R.oo/help/R.oo.rdx
built/built/R.oo/Meta/
built/built/R.oo/Meta/package.rds
built/built/R.oo/Meta/features.rds
built/built/R.oo/Meta/hsearch.rds
built/built/R.oo/Meta/links.rds
built/built/R.oo/Meta/nsInfo.rds
built/built/R.oo/Meta/Rd.rds
built/built/R.oo/WORDLIST
built/built/R.oo/misc/
built/built/R.oo/misc/ASCII.R
built/built/R.oo/misc/Exception.R
built/built/R.oo/CITATION
built/built/R.oo/html/
built/built/R.oo/html/00Index.html
built/built/R.oo/html/R.css
built/built/R.oo/INDEX
built/built/R.oo/doc/
built/built/R.oo/doc/Bengtsson.pdf
built/built/R.oo/R/
built/built/R.oo/R/R.oo
built/built/R.oo/R/R.oo.rdb
built/built/R.oo/R/R.oo.rdx
built/built/R.oo/NEWS.md
built/R.methodsS3/
built/R.methodsS3/NAMESPACE
built/R.methodsS3/DESCRIPTION
built/R.methodsS3/help/
built/R.methodsS3/help/paths.rds
built/R.methodsS3/help/R.methodsS3.rdx
built/R.methodsS3/help/R.methodsS3.rdb
built/R.methodsS3/help/aliases.rds
built/R.methodsS3/help/AnIndex
built/R.methodsS3/Meta/
built/R.methodsS3/Meta/package.rds
built/R.methodsS3/Meta/features.rds
built/R.methodsS3/Meta/hsearch.rds
built/R.methodsS3/Meta/links.rds
built/R.methodsS3/Meta/nsInfo.rds
built/R.methodsS3/Meta/Rd.rds
built/R.methodsS3/WORDLIST
built/R.methodsS3/CITATION
built/R.methodsS3/html/
built/R.methodsS3/html/00Index.html
built/R.methodsS3/html/R.css
built/R.methodsS3/INDEX
built/R.methodsS3/R/
built/R.methodsS3/R/R.methodsS3.rdx
built/R.methodsS3/R/R.methodsS3.rdb
built/R.methodsS3/R/R.methodsS3
built/R.methodsS3/NEWS.md
built/R.oo/
built/R.oo/NAMESPACE
built/R.oo/DESCRIPTION
built/R.oo/help/
built/R.oo/help/paths.rds
built/R.oo/help/aliases.rds
built/R.oo/help/R.oo.rdb
built/R.oo/help/AnIndex
built/R.oo/help/R.oo.rdx
built/R.oo/Meta/
built/R.oo/Meta/package.rds
built/R.oo/Meta/features.rds
built/R.oo/Meta/hsearch.rds
built/R.oo/Meta/links.rds
built/R.oo/Meta/nsInfo.rds
built/R.oo/Meta/Rd.rds
built/R.oo/WORDLIST
built/R.oo/misc/
built/R.oo/misc/ASCII.R
built/R.oo/misc/Exception.R
built/R.oo/CITATION
built/R.oo/html/
built/R.oo/html/00Index.html
built/R.oo/html/R.css
built/R.oo/INDEX
built/R.oo/doc/
built/R.oo/doc/Bengtsson.pdf
built/R.oo/R/
built/R.oo/R/R.oo
built/R.oo/R/R.oo.rdb
built/R.oo/R/R.oo.rdx
built/R.oo/NEWS.md
built/R.utils/
built/R.utils/NAMESPACE
built/R.utils/DESCRIPTION
built/R.utils/help/
built/R.utils/help/paths.rds
built/R.utils/help/R.utils.rdx
built/R.utils/help/aliases.rds
built/R.utils/help/AnIndex
built/R.utils/help/R.utils.rdb
built/R.utils/Meta/
built/R.utils/Meta/package.rds
built/R.utils/Meta/features.rds
built/R.utils/Meta/hsearch.rds
built/R.utils/Meta/links.rds
built/R.utils/Meta/nsInfo.rds
built/R.utils/Meta/Rd.rds
built/R.utils/data-ex/
built/R.utils/data-ex/NEWS.LNK
built/R.utils/data-ex/lnkFileWith10BitsInFlag.lnk
built/R.utils/data-ex/HISTORY.LNK
built/R.utils/data-ex/exampleVComments.R
built/R.utils/WORDLIST
built/R.utils/html/
built/R.utils/html/00Index.html
built/R.utils/html/R.css
built/R.utils/INDEX
built/R.utils/R/
built/R.utils/R/R.utils.rdx
built/R.utils/R/R.utils
built/R.utils/R/R.utils.rdb
built/R.utils/NEWS.md
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''R.matlab'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv R.matlab_3.7.0_R_x86_64-pc-linux-gnu.tar.gz R.methodsS3_1.8.2_R_x86_64-pc-linux-gnu.tar.gz R.oo_1.25.0_R_x86_64-pc-linux-gnu.tar.gz R.utils_2.12.2_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/R.matlab
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'R.matlab'
also installing the dependencies ‘R.methodsS3’, ‘R.oo’, ‘R.utils’

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/R.methodsS3_1.8.2.tar.gz'
Content type 'binary/octet-stream' length 80411 bytes (78 KB)
==================================================
downloaded 78 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/R.oo_1.25.0.tar.gz'
Content type 'binary/octet-stream' length 954776 bytes (932 KB)
==================================================
downloaded 932 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/R.utils_2.12.2.tar.gz'
Content type 'binary/octet-stream' length 1394432 bytes (1.3 MB)
==================================================
downloaded 1.3 MB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/R.matlab_3.7.0.tar.gz'
Content type 'binary/octet-stream' length 272395 bytes (266 KB)
==================================================
downloaded 266 KB

* installing *binary* package ‘R.methodsS3’ ...
* ‘R.methodsS3’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.methodsS3’ as ‘R.methodsS3_1.8.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.methodsS3)
* installing *binary* package ‘R.oo’ ...
* ‘R.oo’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.oo’ as ‘R.oo_1.25.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.oo)
* installing *binary* package ‘R.utils’ ...
* ‘R.utils’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.utils’ as ‘R.utils_2.12.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.utils)
* installing *binary* package ‘R.matlab’ ...
* ‘R.matlab’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.matlab’ as ‘R.matlab_3.7.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.matlab)

The downloaded source packages are in
	‘/tmp/Rtmppv2SZd/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'

real	0m16.851s
user	0m5.925s
sys	0m0.800s
