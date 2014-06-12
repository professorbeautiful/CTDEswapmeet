new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91862, class = c("POSIXct", "POSIXt"))
    , filename = "V_toxDoseThreshold_Roger_1402574999.91862.R"
)
    , generatorCode = function() { 
      clearanceRate * 
        exp(rnorm(1, toxLoc, toxSD))
    }
    , parameters = structure(list(toxLoc = 0.5, toxSD = 0.1), .Names = c("toxLoc", 
"toxSD"))
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.9179, class = c("POSIXct", "POSIXt"))
    , filename = "V_clearanceRate_Roger_1402574999.9179.R"
)
)
)
    , provisions = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91862, class = c("POSIXct", "POSIXt"))
    , filename = "V_toxDoseThreshold_Roger_1402574999.91862.R"
)
    , name = "I_toxDoseThreshold"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.96211, class = c("POSIXct", "POSIXt"))
    , filename = "I_toxDoseThreshold_Roger_1402574999.96211.R"
)
