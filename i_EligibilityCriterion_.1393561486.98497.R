new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
)
    , generatorCode = function () 
{
    liverFunction <= cutoff
}
    , parameters = structure(list(cutoff = 1.5), .Names = "cutoff")
    , requirements = new("VariableList"
    , .Data = list(<S4 object of class structure("Variable", package = "CTDesignExperimenter")>)
)
    , provisions = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
)
)
