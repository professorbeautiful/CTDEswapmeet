new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function(x) is.numeric(x)
    , author = "Roger"
    , timestamp = structure(1402574999.92602, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574999.92602.R"
)
    , generatorCode = function(){
                                rlognorm(1, liverMean, liverCV)
                              }
    , parameters = structure(list(liverMean = 1, liverCV = 0.2), .Names = c("liverMean", 
"liverCV"))
    , requirements = NULL
    , provisions = new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function(x) is.numeric(x)
    , author = "Roger"
    , timestamp = structure(1402574999.92602, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574999.92602.R"
)
    , name = "I_liverFunction"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.92674, class = c("POSIXct", "POSIXt"))
    , filename = "I_liverFunction_Roger_1402574999.92674.R"
)
