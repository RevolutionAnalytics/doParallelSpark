library(quickcheck)
library(doParallelSpark)
library(foreach)


registerDoParallelSpark()

test(
  forall(
    xx = rlist(),
    identical(xx, foreach( x = xx) %dopar% identity(x))))
