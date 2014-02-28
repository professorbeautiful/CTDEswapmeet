new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
