Access GEO meta data and supplementray files
================

``` r
# Load the library
library(GEOquery)
```

    ## Loading required package: Biobase

    ## Loading required package: BiocGenerics

    ## 
    ## Attaching package: 'BiocGenerics'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     IQR, mad, sd, var, xtabs

    ## The following objects are masked from 'package:base':
    ## 
    ##     anyDuplicated, aperm, append, as.data.frame, basename, cbind,
    ##     colnames, dirname, do.call, duplicated, eval, evalq, Filter, Find,
    ##     get, grep, grepl, intersect, is.unsorted, lapply, Map, mapply,
    ##     match, mget, order, paste, pmax, pmax.int, pmin, pmin.int,
    ##     Position, rank, rbind, Reduce, rownames, sapply, setdiff, sort,
    ##     table, tapply, union, unique, unsplit, which.max, which.min

    ## Welcome to Bioconductor
    ## 
    ##     Vignettes contain introductory material; view with
    ##     'browseVignettes()'. To cite Bioconductor, see
    ##     'citation("Biobase")', and for packages 'citation("pkgname")'.

    ## Setting options('download.file.method.GEOquery'='auto')

    ## Setting options('GEOquery.inmemory.gpl'=FALSE)

``` r
#use BiocManager::install('GEOquery') to install the library if necessary
```

``` r
##Fetch GEO metadata for a specific series
gse <- getGEO("GSE249017", GSEMatrix = FALSE)
```

    ## Reading file....

    ## Parsing....

    ## Found 43 entities...

    ## GPL19057 (1 of 44 entities)

    ## GPL30172 (2 of 44 entities)

    ## GSM7925209 (3 of 44 entities)

    ## GSM7925210 (4 of 44 entities)

    ## GSM7925211 (5 of 44 entities)

    ## GSM7925212 (6 of 44 entities)

    ## GSM7925213 (7 of 44 entities)

    ## GSM7925214 (8 of 44 entities)

    ## GSM7925215 (9 of 44 entities)

    ## GSM7925216 (10 of 44 entities)

    ## GSM7925217 (11 of 44 entities)

    ## GSM7925218 (12 of 44 entities)

    ## GSM7925219 (13 of 44 entities)

    ## GSM7925220 (14 of 44 entities)

    ## GSM7925221 (15 of 44 entities)

    ## GSM7925222 (16 of 44 entities)

    ## GSM7925223 (17 of 44 entities)

    ## GSM7925224 (18 of 44 entities)

    ## GSM8748063 (19 of 44 entities)

    ## GSM8748064 (20 of 44 entities)

    ## GSM8748065 (21 of 44 entities)

    ## GSM8748066 (22 of 44 entities)

    ## GSM8748067 (23 of 44 entities)

    ## GSM8748068 (24 of 44 entities)

    ## GSM8748069 (25 of 44 entities)

    ## GSM8748070 (26 of 44 entities)

    ## GSM8748071 (27 of 44 entities)

    ## GSM8748072 (28 of 44 entities)

    ## GSM8748073 (29 of 44 entities)

    ## GSM8748074 (30 of 44 entities)

    ## GSM8748075 (31 of 44 entities)

    ## GSM8748076 (32 of 44 entities)

    ## GSM8748077 (33 of 44 entities)

    ## GSM8748078 (34 of 44 entities)

    ## GSM8748079 (35 of 44 entities)

    ## GSM8748080 (36 of 44 entities)

    ## GSM8748081 (37 of 44 entities)

    ## GSM8748082 (38 of 44 entities)

    ## GSM8748083 (39 of 44 entities)

    ## GSM8748084 (40 of 44 entities)

    ## GSM8748085 (41 of 44 entities)

    ## GSM8748086 (42 of 44 entities)

    ## GSM8748087 (43 of 44 entities)

``` r
names(GSMList(gse)) #sample names
```

    ##  [1] "GSM7925209" "GSM7925210" "GSM7925211" "GSM7925212" "GSM7925213"
    ##  [6] "GSM7925214" "GSM7925215" "GSM7925216" "GSM7925217" "GSM7925218"
    ## [11] "GSM7925219" "GSM7925220" "GSM7925221" "GSM7925222" "GSM7925223"
    ## [16] "GSM7925224" "GSM8748063" "GSM8748064" "GSM8748065" "GSM8748066"
    ## [21] "GSM8748067" "GSM8748068" "GSM8748069" "GSM8748070" "GSM8748071"
    ## [26] "GSM8748072" "GSM8748073" "GSM8748074" "GSM8748075" "GSM8748076"
    ## [31] "GSM8748077" "GSM8748078" "GSM8748079" "GSM8748080" "GSM8748081"
    ## [36] "GSM8748082" "GSM8748083" "GSM8748084" "GSM8748085" "GSM8748086"
    ## [41] "GSM8748087"

``` r
#download supplementray files
supp_files <- getGEOSuppFiles('GSE249017', fetch_files = T) #automatically download to the working diretory
head(supp_files)
```

    ##                                                                                               size
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz  682835
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 1204815
    ##                                                                                            isdir
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz FALSE
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz FALSE
    ##                                                                                            mode
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz  644
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz  644
    ##                                                                                                          mtime
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz 2025-10-07 19:04:09
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 2025-10-07 19:04:09
    ##                                                                                                          ctime
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz 2025-10-07 19:04:09
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 2025-10-07 19:04:09
    ##                                                                                                          atime
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz 2025-10-01 20:04:22
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 2025-10-01 20:04:21
    ##                                                                                             uid
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz 4653
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 4653
    ##                                                                                                  gid
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz 111132680
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz 111132680
    ##                                                                                              uname
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz qlp9135
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz qlp9135
    ##                                                                                            grname
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts1.csv.gz e32680
    ## /projects/e32680/02_Getting-Genomic-Data-Onto-Quest /GSE249017/GSE249017_RawCounts2.csv.gz e32680
