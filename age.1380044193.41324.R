new("Variable"
    , name = "age"
    , description = "age, binned by decade"
    , checkDataType = function (x) 
is.factor(x) & levels(x) %in% paste0("(", 10 * (0:9), ",", 10 * 
    (1:10), "]")
)
