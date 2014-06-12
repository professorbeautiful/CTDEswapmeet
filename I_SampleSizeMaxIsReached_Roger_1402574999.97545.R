new("VariableGenerator"
    , insertSubType = "StoppingCriterion"
    , outputVariable = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574999.97498, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMaxIsReached_Roger_1402574999.97498.R"
)
    , generatorCode = function(){
      SampleSizeMax <= trialData$trialSummaries$NpatientsEnrolled
    }
    , parameters = list()
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402574999.92006, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMax_Roger_1402574999.92006.R"
)
)
)
    , provisions = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574999.97498, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMaxIsReached_Roger_1402574999.97498.R"
)
    , name = "I_SampleSizeMaxIsReached"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.97545, class = c("POSIXct", "POSIXt"))
    , filename = "I_SampleSizeMaxIsReached_Roger_1402574999.97545.R"
)
