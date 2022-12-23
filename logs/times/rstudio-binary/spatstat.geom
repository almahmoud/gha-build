+ git pull origin main
From https://github.com/almahmoud/gha-build
 * branch              main       -> FETCH_HEAD
   3466ff0d..8691b2eb  main       -> origin/main
Updating 3466ff0d..8691b2eb
Fast-forward
 lists/pathifier | 1 +
 packages.json   | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 lists/pathifier
+ export LIBRARY=/__w/gha-build/gha-build/built/
+ LIBRARY=/__w/gha-build/gha-build/built/
+ export PKG=spatstat.geom
+ PKG=spatstat.geom
+ export runstart=2022-12-21-14-37
+ runstart=2022-12-21-14-37
+ mkdir -p /__w/gha-build/gha-build/built/
+ mkdir -p /tmp/tars/
+ sed -n '/^    "spatstat.geom"/,/^    "/p' directdeps.json
+ awk '-F"' '{print $2}'
+ grep '^        "'
+ export -f process_dep
+ '[' -s /tmp/deps ']'
+ process_deps
+ cat /tmp/deps
+ xargs -i bash -c 'process_dep {}'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  2 10.0M    2  219k    0     0   275k      0  0:00:37 --:--:--  0:00:37  274k 11 10.0M   11 1223k    0     0   691k      0  0:00:14  0:00:01  0:00:13  691k 25 10.0M   25 2641k    0     0   944k      0  0:00:10  0:00:02  0:00:08  944k 46 10.0M   46 4777k    0     0  1267k      0  0:00:08  0:00:03  0:00:05 1267k 75 10.0M   75 7805k    0     0  1636k      0  0:00:06  0:00:04  0:00:02 1636k100 10.0M  100 10.0M    0     0  1899k      0  0:00:05  0:00:05 --:--:-- 2178k
built/
built/built/
built/built/lattice/
built/built/lattice/libs/
built/built/lattice/libs/lattice.so
built/built/lattice/NEWS
built/built/lattice/NAMESPACE
built/built/lattice/DESCRIPTION
built/built/lattice/help/
built/built/lattice/help/paths.rds
built/built/lattice/help/lattice.rdx
built/built/lattice/help/lattice.rdb
built/built/lattice/help/aliases.rds
built/built/lattice/help/AnIndex
built/built/lattice/data/
built/built/lattice/data/Rdata.rds
built/built/lattice/data/Rdata.rdb
built/built/lattice/data/Rdata.rdx
built/built/lattice/Meta/
built/built/lattice/Meta/package.rds
built/built/lattice/Meta/demo.rds
built/built/lattice/Meta/features.rds
built/built/lattice/Meta/hsearch.rds
built/built/lattice/Meta/links.rds
built/built/lattice/Meta/nsInfo.rds
built/built/lattice/Meta/Rd.rds
built/built/lattice/Meta/data.rds
built/built/lattice/po/
built/built/lattice/po/it/
built/built/lattice/po/it/LC_MESSAGES/
built/built/lattice/po/it/LC_MESSAGES/R-lattice.mo
built/built/lattice/po/fr/
built/built/lattice/po/fr/LC_MESSAGES/
built/built/lattice/po/fr/LC_MESSAGES/R-lattice.mo
built/built/lattice/po/ko/
built/built/lattice/po/ko/LC_MESSAGES/
built/built/lattice/po/ko/LC_MESSAGES/R-lattice.mo
built/built/lattice/po/pl/
built/built/lattice/po/pl/LC_MESSAGES/
built/built/lattice/po/pl/LC_MESSAGES/R-lattice.mo
built/built/lattice/po/en@quot/
built/built/lattice/po/en@quot/LC_MESSAGES/
built/built/lattice/po/en@quot/LC_MESSAGES/R-lattice.mo
built/built/lattice/po/de/
built/built/lattice/po/de/LC_MESSAGES/
built/built/lattice/po/de/LC_MESSAGES/R-lattice.mo
built/built/lattice/CITATION
built/built/lattice/html/
built/built/lattice/html/00Index.html
built/built/lattice/html/R.css
built/built/lattice/INDEX
built/built/lattice/R/
built/built/lattice/R/lattice
built/built/lattice/R/lattice.rdx
built/built/lattice/R/lattice.rdb
built/built/lattice/demo/
built/built/lattice/demo/panel.R
built/built/lattice/demo/intervals.R
built/built/lattice/demo/labels.R
built/built/lattice/demo/lattice.R
built/built/Matrix/
built/built/Matrix/Doxyfile
built/built/Matrix/libs/
built/built/Matrix/libs/Matrix.so
built/built/Matrix/NAMESPACE
built/built/Matrix/LICENCE
built/built/Matrix/DESCRIPTION
built/built/Matrix/test-tools-1.R
built/built/Matrix/help/
built/built/Matrix/help/paths.rds
built/built/Matrix/help/aliases.rds
built/built/Matrix/help/AnIndex
built/built/Matrix/help/Matrix.rdx
built/built/Matrix/help/Matrix.rdb
built/built/Matrix/data/
built/built/Matrix/data/USCounties.R
built/built/Matrix/data/datalist
built/built/Matrix/data/CAex.R
built/built/Matrix/data/wrld_1deg.R
built/built/Matrix/data/KNex.R
built/built/Matrix/Meta/
built/built/Matrix/Meta/package.rds
built/built/Matrix/Meta/vignette.rds
built/built/Matrix/Meta/features.rds
built/built/Matrix/Meta/hsearch.rds
built/built/Matrix/Meta/links.rds
built/built/Matrix/Meta/nsInfo.rds
built/built/Matrix/Meta/Rd.rds
built/built/Matrix/Meta/data.rds
built/built/Matrix/NEWS.Rd
built/built/Matrix/include/
built/built/Matrix/include/cholmod.h
built/built/Matrix/include/Matrix_stubs.c
built/built/Matrix/include/Matrix.h
built/built/Matrix/test-tools-Matrix.R
built/built/Matrix/test-tools.R
built/built/Matrix/po/
built/built/Matrix/po/lt/
built/built/Matrix/po/lt/LC_MESSAGES/
built/built/Matrix/po/lt/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/lt/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/it/
built/built/Matrix/po/it/LC_MESSAGES/
built/built/Matrix/po/it/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/it/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/fr/
built/built/Matrix/po/fr/LC_MESSAGES/
built/built/Matrix/po/fr/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/fr/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/ko/
built/built/Matrix/po/ko/LC_MESSAGES/
built/built/Matrix/po/ko/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/ko/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/pl/
built/built/Matrix/po/pl/LC_MESSAGES/
built/built/Matrix/po/pl/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/pl/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/en@quot/
built/built/Matrix/po/en@quot/LC_MESSAGES/
built/built/Matrix/po/en@quot/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/en@quot/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/po/de/
built/built/Matrix/po/de/LC_MESSAGES/
built/built/Matrix/po/de/LC_MESSAGES/Matrix.mo
built/built/Matrix/po/de/LC_MESSAGES/R-Matrix.mo
built/built/Matrix/Copyrights
built/built/Matrix/html/
built/built/Matrix/html/00Index.html
built/built/Matrix/html/R.css
built/built/Matrix/INDEX
built/built/Matrix/doc/
built/built/Matrix/doc/Design-issues.Rnw
built/built/Matrix/doc/sparseModels.R
built/built/Matrix/doc/Intro2Matrix.pdf
built/built/Matrix/doc/Intro2Matrix.Rnw
built/built/Matrix/doc/Introduction.R
built/built/Matrix/doc/sparseModels.Rnw
built/built/Matrix/doc/Design-issues.pdf
built/built/Matrix/doc/Design-issues.R
built/built/Matrix/doc/Comparisons.R
built/built/Matrix/doc/Announce.txt
built/built/Matrix/doc/Introduction.Rnw
built/built/Matrix/doc/Intro2Matrix.R
built/built/Matrix/doc/index.html
built/built/Matrix/doc/SuiteSparse/
built/built/Matrix/doc/SuiteSparse/CHOLMOD.txt
built/built/Matrix/doc/SuiteSparse/COLAMD.txt
built/built/Matrix/doc/SuiteSparse/AMD.txt
built/built/Matrix/doc/SuiteSparse/SPQR.txt
built/built/Matrix/doc/SuiteSparse/SuiteSparse_config.txt
built/built/Matrix/doc/SuiteSparse/UserGuides.txt
built/built/Matrix/doc/Comparisons.pdf
built/built/Matrix/doc/sparseModels.pdf
built/built/Matrix/doc/Comparisons.Rnw
built/built/Matrix/doc/Introduction.pdf
built/built/Matrix/R/
built/built/Matrix/R/Matrix
built/built/Matrix/R/Matrix.rdx
built/built/Matrix/R/Matrix.rdb
built/built/Matrix/external/
built/built/Matrix/external/symW.rda
built/built/Matrix/external/lund_a.rsa
built/built/Matrix/external/wrong.mtx
built/built/Matrix/external/pores_1.mtx
built/built/Matrix/external/wrld_1deg_slots.rda
built/built/Matrix/external/CAex_slots.rda
built/built/Matrix/external/KNex_slots.rda
built/built/Matrix/external/jgl009.mtx
built/built/Matrix/external/utm300.rua
built/built/Matrix/external/test3comp.rda
built/built/Matrix/external/USCounties_slots.rda
built/built/Matrix/external/Z_NA_rnk.rds
built/built/Matrix/external/symA.rda
built/built/Matrix/external/lund_a.mtx
built/built/spatstat.utils/
built/built/spatstat.utils/libs/
built/built/spatstat.utils/libs/spatstat.utils.so
built/built/spatstat.utils/NEWS
built/built/spatstat.utils/NAMESPACE
built/built/spatstat.utils/DESCRIPTION
built/built/spatstat.utils/help/
built/built/spatstat.utils/help/paths.rds
built/built/spatstat.utils/help/spatstat.utils.rdb
built/built/spatstat.utils/help/spatstat.utils.rdx
built/built/spatstat.utils/help/aliases.rds
built/built/spatstat.utils/help/macros/
built/built/spatstat.utils/help/macros/defns.Rd
built/built/spatstat.utils/help/AnIndex
built/built/spatstat.utils/Meta/
built/built/spatstat.utils/Meta/package.rds
built/built/spatstat.utils/Meta/features.rds
built/built/spatstat.utils/Meta/hsearch.rds
built/built/spatstat.utils/Meta/links.rds
built/built/spatstat.utils/Meta/nsInfo.rds
built/built/spatstat.utils/Meta/Rd.rds
built/built/spatstat.utils/html/
built/built/spatstat.utils/html/00Index.html
built/built/spatstat.utils/html/R.css
built/built/spatstat.utils/INDEX
built/built/spatstat.utils/doc/
built/built/spatstat.utils/doc/packagesizes.txt
built/built/spatstat.utils/R/
built/built/spatstat.utils/R/spatstat.utils.rdb
built/built/spatstat.utils/R/spatstat.utils.rdx
built/built/spatstat.utils/R/spatstat.utils
built/spatstat.utils/
built/spatstat.utils/libs/
built/spatstat.utils/libs/spatstat.utils.so
built/spatstat.utils/NEWS
built/spatstat.utils/NAMESPACE
built/spatstat.utils/DESCRIPTION
built/spatstat.utils/help/
built/spatstat.utils/help/paths.rds
built/spatstat.utils/help/spatstat.utils.rdb
built/spatstat.utils/help/spatstat.utils.rdx
built/spatstat.utils/help/aliases.rds
built/spatstat.utils/help/macros/
built/spatstat.utils/help/macros/defns.Rd
built/spatstat.utils/help/AnIndex
built/spatstat.utils/Meta/
built/spatstat.utils/Meta/package.rds
built/spatstat.utils/Meta/features.rds
built/spatstat.utils/Meta/hsearch.rds
built/spatstat.utils/Meta/links.rds
built/spatstat.utils/Meta/nsInfo.rds
built/spatstat.utils/Meta/Rd.rds
built/spatstat.utils/html/
built/spatstat.utils/html/00Index.html
built/spatstat.utils/html/R.css
built/spatstat.utils/INDEX
built/spatstat.utils/doc/
built/spatstat.utils/doc/packagesizes.txt
built/spatstat.utils/R/
built/spatstat.utils/R/spatstat.utils.rdb
built/spatstat.utils/R/spatstat.utils.rdx
built/spatstat.utils/R/spatstat.utils
built/spatstat.data/
built/spatstat.data/NEWS
built/spatstat.data/NAMESPACE
built/spatstat.data/DESCRIPTION
built/spatstat.data/help/
built/spatstat.data/help/paths.rds
built/spatstat.data/help/aliases.rds
built/spatstat.data/help/macros/
built/spatstat.data/help/macros/defns.Rd
built/spatstat.data/help/spatstat.data.rdb
built/spatstat.data/help/spatstat.data.rdx
built/spatstat.data/help/AnIndex
built/spatstat.data/data/
built/spatstat.data/data/Rdata.rds
built/spatstat.data/data/Rdata.rdb
built/spatstat.data/data/Rdata.rdx
built/spatstat.data/Meta/
built/spatstat.data/Meta/package.rds
built/spatstat.data/Meta/features.rds
built/spatstat.data/Meta/hsearch.rds
built/spatstat.data/Meta/links.rds
built/spatstat.data/Meta/nsInfo.rds
built/spatstat.data/Meta/Rd.rds
built/spatstat.data/Meta/data.rds
built/spatstat.data/rawdata/
built/spatstat.data/rawdata/sandholes/
built/spatstat.data/rawdata/sandholes/sandholes.jpg
built/spatstat.data/rawdata/osteo/
built/spatstat.data/rawdata/osteo/osteo36.txt
built/spatstat.data/rawdata/finpines/
built/spatstat.data/rawdata/finpines/finpines.txt
built/spatstat.data/rawdata/gorillas/
built/spatstat.data/rawdata/gorillas/vegetation.asc
built/spatstat.data/rawdata/amacrine/
built/spatstat.data/rawdata/amacrine/amacrine.txt
built/spatstat.data/rawdata/vesicles/
built/spatstat.data/rawdata/vesicles/vesicles.txt
built/spatstat.data/rawdata/vesicles/mitochondria.txt
built/spatstat.data/rawdata/vesicles/vesicleswindow.txt
built/spatstat.data/rawdata/vesicles/vesiclesimage.tif
built/spatstat.data/rawdata/vesicles/vesicles.csv
built/spatstat.data/rawdata/vesicles/vesicleswindow.csv
built/spatstat.data/rawdata/vesicles/presynapse.txt
built/spatstat.data/rawdata/vesicles/activezone.txt
built/spatstat.data/rawdata/vesicles/vesiclesmask.tif
built/spatstat.data/html/
built/spatstat.data/html/00Index.html
built/spatstat.data/html/R.css
built/spatstat.data/INDEX
built/spatstat.data/doc/
built/spatstat.data/doc/packagesizes.txt
built/spatstat.data/R/
built/spatstat.data/R/spatstat.data
built/spatstat.data/R/spatstat.data.rdb
built/spatstat.data/R/spatstat.data.rdx
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100  296k  100  296k    0     0   332k      0 --:--:-- --:--:-- --:--:--  332k
built/
built/deldir/
built/deldir/libs/
built/deldir/libs/deldir.so
built/deldir/NAMESPACE
built/deldir/DESCRIPTION
built/deldir/code.discarded/
built/deldir/code.discarded/xsucc.f
built/deldir/code.discarded/inddup.r
built/deldir/code.discarded/fexitf.r
built/deldir/code.discarded/trigraf.r
built/deldir/code.discarded/fexitc.c
built/deldir/code.discarded/ind.dup.R
built/deldir/code.discarded/trigraf1.r.save
built/deldir/code.discarded/triang.list.R.save
built/deldir/code.discarded/collincheck.r
built/deldir/code.discarded/intri.r.save
built/deldir/code.discarded/collinChk.R
built/deldir/code.discarded/collincheck.f
built/deldir/code.discarded/init.c
built/deldir/code.discarded/trigraf.c
built/deldir/code.discarded/fexitf.f
built/deldir/help/
built/deldir/help/paths.rds
built/deldir/help/aliases.rds
built/deldir/help/macros/
built/deldir/help/macros/defns.Rd
built/deldir/help/deldir.rdx
built/deldir/help/deldir.rdb
built/deldir/help/AnIndex
built/deldir/data/
built/deldir/data/Rdata.rds
built/deldir/data/Rdata.rdb
built/deldir/data/Rdata.rdx
built/deldir/Meta/
built/deldir/Meta/package.rds
built/deldir/Meta/features.rds
built/deldir/Meta/hsearch.rds
built/deldir/Meta/links.rds
built/deldir/Meta/nsInfo.rds
built/deldir/Meta/Rd.rds
built/deldir/Meta/data.rds
built/deldir/SavedRatfor/
built/deldir/SavedRatfor/testeq.r
built/deldir/SavedRatfor/crossutil.r
built/deldir/SavedRatfor/qtest.r
built/deldir/SavedRatfor/insrt1.r
built/deldir/SavedRatfor/swap.r
built/deldir/SavedRatfor/insrt.r
built/deldir/SavedRatfor/intri.r
built/deldir/SavedRatfor/dldins.r
built/deldir/SavedRatfor/locn.r
built/deldir/SavedRatfor/trifnd.r
built/deldir/SavedRatfor/triar.r
built/deldir/SavedRatfor/pred.r
built/deldir/SavedRatfor/circen.r
built/deldir/SavedRatfor/qtest1.r
built/deldir/SavedRatfor/dirout.r
built/deldir/SavedRatfor/adjchk.r
built/deldir/SavedRatfor/delseg.r
built/deldir/SavedRatfor/delout.r
built/deldir/SavedRatfor/acchk.r
built/deldir/SavedRatfor/mnnd.r
built/deldir/SavedRatfor/initad.r
built/deldir/SavedRatfor/master.r
built/deldir/SavedRatfor/dirseg.r
built/deldir/SavedRatfor/addpt.r
built/deldir/SavedRatfor/succ.r
built/deldir/SavedRatfor/collincheck.r
built/deldir/SavedRatfor/binsrt.r
built/deldir/SavedRatfor/delet1.r
built/deldir/SavedRatfor/delet.r
built/deldir/SavedRatfor/stoke.r
built/deldir/SavedRatfor/cross.r
built/deldir/READ_ME
built/deldir/ratfor/
built/deldir/ratfor/testeq.r
built/deldir/ratfor/qtest.r
built/deldir/ratfor/insrt1.r
built/deldir/ratfor/swap.r
built/deldir/ratfor/insrt.r
built/deldir/ratfor/intri.r
built/deldir/ratfor/dldins.r
built/deldir/ratfor/locn.r
built/deldir/ratfor/trifnd.r
built/deldir/ratfor/triar.r
built/deldir/ratfor/pred.r
built/deldir/ratfor/circen.r
built/deldir/ratfor/qtest1.r
built/deldir/ratfor/dirout.r
built/deldir/ratfor/adjchk.r
built/deldir/ratfor/delseg.r
built/deldir/ratfor/delout.r
built/deldir/ratfor/acchk.r
built/deldir/ratfor/mnnd.r
built/deldir/ratfor/initad.r
built/deldir/ratfor/makefor
built/deldir/ratfor/master.r
built/deldir/ratfor/dirseg.r
built/deldir/ratfor/addpt.r
built/deldir/ratfor/succ.r
built/deldir/ratfor/binsrt.r
built/deldir/ratfor/delet1.r
built/deldir/ratfor/delet.r
built/deldir/ratfor/stoke.r
built/deldir/ratfor/cross.r
built/deldir/html/
built/deldir/html/00Index.html
built/deldir/html/R.css
built/deldir/INDEX
built/deldir/R/
built/deldir/R/deldir
built/deldir/R/deldir.rdx
built/deldir/R/deldir.rdb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0  492k    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100  492k  100  492k    0     0   455k      0  0:00:01  0:00:01 --:--:--  455k
built/
built/polyclip/
built/polyclip/libs/
built/polyclip/libs/polyclip.so
built/polyclip/NEWS
built/polyclip/NAMESPACE
built/polyclip/DESCRIPTION
built/polyclip/help/
built/polyclip/help/paths.rds
built/polyclip/help/polyclip.rdx
built/polyclip/help/aliases.rds
built/polyclip/help/polyclip.rdb
built/polyclip/help/AnIndex
built/polyclip/Meta/
built/polyclip/Meta/package.rds
built/polyclip/Meta/features.rds
built/polyclip/Meta/hsearch.rds
built/polyclip/Meta/links.rds
built/polyclip/Meta/nsInfo.rds
built/polyclip/Meta/Rd.rds
built/polyclip/html/
built/polyclip/html/00Index.html
built/polyclip/html/R.css
built/polyclip/INDEX
built/polyclip/R/
built/polyclip/R/polyclip
built/polyclip/R/polyclip.rdx
built/polyclip/R/polyclip.rdb
+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/__w/gha-build/gha-build/built/'\'', p); .libPaths(p); if(BiocManager::install('\''spatstat.geom'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
+ mv deldir_1.0-6_R_x86_64-pc-linux-gnu.tar.gz polyclip_1.10-4_R_x86_64-pc-linux-gnu.tar.gz spatstat.data_3.0-0_R_x86_64-pc-linux-gnu.tar.gz spatstat.geom_3.0-3_R_x86_64-pc-linux-gnu.tar.gz spatstat.utils_3.0-1_R_x86_64-pc-linux-gnu.tar.gz /tmp/tars/
+ echo '\n\nBinary Build log:\n'
\n\nBinary Build log:\n
+ cat /tmp/spatstat.geom
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.rstudio.com/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'spatstat.geom'
also installing the dependencies ‘spatstat.data’, ‘spatstat.utils’, ‘deldir’, ‘polyclip’

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.data_3.0-0.tar.gz'
Content type 'binary/octet-stream' length 4096162 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.utils_3.0-1.tar.gz'
Content type 'binary/octet-stream' length 390313 bytes (381 KB)
==================================================
downloaded 381 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/deldir_1.0-6.tar.gz'
Content type 'binary/octet-stream' length 306171 bytes (298 KB)
==================================================
downloaded 298 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/polyclip_1.10-4.tar.gz'
Content type 'binary/octet-stream' length 503874 bytes (492 KB)
==================================================
downloaded 492 KB

trying URL 'https://packagemanager.rstudio.com/cran/__linux__/jammy/latest/src/contrib/spatstat.geom_3.0-3.tar.gz'
Content type 'binary/octet-stream' length 4084376 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

* installing *binary* package ‘spatstat.utils’ ...
* ‘spatstat.utils’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.utils’ as ‘spatstat.utils_3.0-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.utils)
* installing *binary* package ‘deldir’ ...
* ‘deldir’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘deldir’ as ‘deldir_1.0-6_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (deldir)
* installing *binary* package ‘polyclip’ ...
* ‘polyclip’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘polyclip’ as ‘polyclip_1.10-4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (polyclip)
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
	‘/tmp/Rtmpeioceb/downloaded_packages’
Old packages: 'bslib', 'cli', 'digest', 'evaluate', 'gert', 'htmltools',
  'htmlwidgets', 'httpuv', 'jsonlite', 'knitr', 'openssl', 'pkgbuild',
  'pkgdown', 'pkgload', 'purrr', 'rmarkdown', 'roxygen2', 'sass', 'shiny',
  'stringr', 'testthat', 'tinytex', 'vctrs', 'whisker', 'xfun', 'boot',
  'foreign', 'Matrix', 'nlme'

real	0m20.222s
user	0m7.200s
sys	0m0.891s
