new("VariableGenerator"
    , insertSubType = "DesignParameter"
    , outputVariable = new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
)
    , generatorCode = function () 
{
    SampleSizeMax
}
    , parameters = structure(list(SampleSizeMax = 2), .Names = "SampleSizeMax")
    , requirements = NULL
    , provisions = new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
)
)
