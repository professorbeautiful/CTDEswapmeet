new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
    , generatorCode = function () 
{
    clearanceRate * exp(rnorm(1, toxLoc, toxSD))
}
    , parameters = structure(list(toxLoc = 0.5, toxSD = 0.1), .Names = c("toxLoc", 
"toxSD"))
    , requirements = new("VariableList"
    , .Data = list(<S4 object of class structure("Variable", package = "CTDesignExperimenter")>)
)
    , provisions = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
)
