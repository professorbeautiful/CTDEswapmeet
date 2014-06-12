new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574999.92262, class = c("POSIXct", "POSIXt"))
    , filename = "V_isOldEnough_Roger_1402574999.92262.R"
)
    , generatorCode = function()  { age >= cutoff}
    , parameters = structure(list(cutoff = 50), .Names = "cutoff")
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91642, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574999.91642.R"
)
)
)
    , provisions = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574999.92262, class = c("POSIXct", "POSIXt"))
    , filename = "V_isOldEnough_Roger_1402574999.92262.R"
)
    , name = "I_isOldEnough"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.92339, class = c("POSIXct", "POSIXt"))
    , filename = "I_isOldEnough_Roger_1402574999.92339.R"
)
