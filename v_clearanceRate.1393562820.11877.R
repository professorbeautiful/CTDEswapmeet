new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
