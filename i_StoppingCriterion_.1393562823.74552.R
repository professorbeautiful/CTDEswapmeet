new("VariableGenerator"
    , insertSubType = "StoppingCriterion"
    , outputVariable = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
)
    , generatorCode = function () 
{
    SampleSizeMax <= trialData$NpatientsEnrolled
}
    , parameters = list()
    , requirements = new("VariableList"
    , .Data = list(<S4 object of class structure("Variable", package = "CTDesignExperimenter")>)
)
    , provisions = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
)
)
