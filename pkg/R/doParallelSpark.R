doParallelSpark =
  function(obj, expr, envir, data) {
    for (p in obj$packages)  includePackage(p)
    input.data = as.list(iter(obj))
    distributed.data =
      repartition(
        parallelize(
          data$sc,
          input.data),
        length(input.data))
    collect(
      lapply(
      distributed.data,
      function(args) {
        eval(expr, args, envir)}))}

registerDoParallelSpark =
  function(sc = sparkR.init()) {
     setDoPar(doParallelSpark, list(sc = sc))}

