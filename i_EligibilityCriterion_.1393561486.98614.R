new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
)
    , generatorCode = function () 
{
    age >= cutoff
}
    , parameters = structure(list(cutoff = 50), .Names = "cutoff")
    , requirements = new("VariableList"
    , .Data = list(<S4 object of class structure("Variable", package = "CTDesignExperimenter")>)
)
    , provisions = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
)
)
