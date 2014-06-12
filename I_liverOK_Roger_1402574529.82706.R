new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82659, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverOK_Roger_1402574529.82659.R"
)
    , generatorCode = function()  { liverFunction <= cutoff}
    , parameters = structure(list(cutoff = 1.5), .Names = "cutoff")
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function(x) is.numeric(x)
    , author = "Roger"
    , timestamp = structure(1402574529.82488, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574529.82488.R"
)
)
)
    , provisions = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82659, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverOK_Roger_1402574529.82659.R"
)
    , name = "I_liverOK"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82706, class = c("POSIXct", "POSIXt"))
    , filename = "I_liverOK_Roger_1402574529.82706.R"
)
