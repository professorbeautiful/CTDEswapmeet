new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91642, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574999.91642.R"
)
    , generatorCode = function(){
                              rlognorm(1, ageMean, ageCV)
                            }
    , parameters = structure(list(ageMean = 50, ageCV = 0.5), .Names = c("ageMean", 
"ageCV"))
    , requirements = NULL
    , provisions = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91642, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574999.91642.R"
)
    , name = "I_age"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.92089, class = c("POSIXct", "POSIXt"))
    , filename = "I_age_Roger_1402574999.92089.R"
)
