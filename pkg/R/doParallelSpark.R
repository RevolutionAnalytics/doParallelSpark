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

sparkinfo =
  function(data, item)
    switch(
      item,
      workers = 2, # 2 to make caret go parallel, not because it's true TODO
      names = "doParallelSpark",
      version = packageDescription("doParallelSpark", fields = "Version"))

registerDoParallelSpark =
  function(sc = sparkR.init()) {
     setDoPar(doParallelSpark, list(sc = sc), sparkinfo)}

