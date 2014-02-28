new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function (x) 
is.numeric(x)
)
    , generatorCode = function () 
{
    rlognorm(1, liverMean, liverCV)
}
    , parameters = structure(list(liverMean = 1, liverCV = 0.2), .Names = c("liverMean", 
"liverCV"))
    , requirements = NULL
    , provisions = new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function (x) 
is.numeric(x)
)
)
