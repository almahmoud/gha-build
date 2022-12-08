#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
outputfile <- commandArgs(trailingOnly = TRUE)
BiocManager::install(version = "3.16", ask = FALSE)

.exlude_packages <- function() {
    inst <- installed.packages()
    inst[inst[, "Priority"] %in% "base", "Package"]
}
exclude <- .exlude_packages()
db <- available.packages(repos = BiocManager::repositories())
biocpkgs <- available.packages(repos = BiocManager::repositories()["BioCsoft"])[,1]
pkgdeps <- c()
while (length(biocpkgs) > 0)
{
    biocpkgs <- biocpkgs[!(biocpkgs %in% names(pkgdeps))]
    pdeps <- tools::package_dependencies(biocpkgs, db = db, recursive ="strong", which ="strong")
    pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
    for (p in names(pdeps)) {
        biocpkgs <- c(biocpkgs, pdeps[[p]][!(pdeps[[p]]) %in% c(names(pkgdeps), biocpkgs)])
    }
    
    ## Add this package and its reverse dependencies to the list
    pkgdeps <- c(pkgdeps, pdeps)
    ## Add dependencies to list to add to final list of packages to buil
}
# BiocManager::install("BiocPkgTools", ask = FALSE)
# BiocManager::install("dplyr", ask = FALSE)
# depdf <- buildPkgDependencyDataFrame(c("Depends", "Imports", "Suggests", "Enhances")) # not "LinkingTo"
# notype <- depdf[-3]
# deps <- lapply(with(unique(notype), split(dependency, Package)), function(x) c(x))


# if (!require("BiocKubeInstall", quietly = TRUE))
# 	BiocManager::install("Bioconductor/BiocKubeInstall")
# library(BiocKubeInstall)
# deps <- BiocKubeInstall::pkg_dependencies(version = "3.16")
library(jsonlite)
fileConn<-file(outputfile)
writeLines(prettify(toJSON(pkgdeps)), fileConn)
close(fileConn)
