\name{doParallelSpark-package}
\alias{doParallelSpark-package}
\docType{package}
\title{
Spark backend for the foreach package
}
\description{
Used in conjunction with foreach, allows to execute R functions on a Spark cluster}
\details{
\tabular{ll}{
Package: \tab doParallelSpark\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-03-24\cr
License: \tab What license is it under?\cr
}

Packages that can take advantage of foreach, hence this package, if you have access to a Spark cluster, include:
BANFF, bcp, caret, clustvarsel, doRNG, ezsim, fdasrvf, flip, GA, hdlm, hzar, jaatha, lfe, localgauss, MetaPCA, MetaQC, missForest, Morpho, parfossil, PAWL, permGPU, randomGLM, RbioRXN, Rlof, sdcTarget, SGP, sms, spacom, spatial.tools, StAMPP, survSNP, tsDyn, turboEM, WGCNA, aqp, BayesFactor, Bclim, biganalytics, caret, cMonkey, DEoptim, DiceKriging, diveRsity, dplR, FinancialInstrument, fitTetra, fxregime, GA, gam, ggmcmc, glmnet, harvestr, HMPTrees, imputation, iterators, itertools, kaps, lava, msm, MSToolkit, pec, phenex, plyr, polywog, protr, ripa, sperich, strucchange, treatSens

}
\author{
Revolution Analytics <rhadoop@revolutionanalytics.com>}
}
\examples{
library(foreach)
registerDoParallelSpark()
system.time(foreach(i = 1:8) \%dopar\% Sys.sleep(1))
}
