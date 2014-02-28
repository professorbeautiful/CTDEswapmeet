new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
    , generatorCode = function () 
{
    return(exp(rnorm(1, mean = log(clearanceLocation), sd = clearanceSD)))
}
    , parameters = structure(list(clearanceLocation = 6, clearanceSD = 1), .Names = c("clearanceLocation", 
"clearanceSD"))
    , requirements = new("VariableList"
    , .Data = list()
)
    , provisions = new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
)
