new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91934, class = c("POSIXct", "POSIXt"))
    , filename = "V_responseDoseThreshold_Roger_1402574999.91934.R"
)
    , generatorCode = function() { 
      clearanceRate * 
        exp(rnorm(1, responseLoc, responseSD))
    }
    , parameters = structure(list(responseLoc = 0, responseSD = 0.01), .Names = c("responseLoc", 
"responseSD"))
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
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574999.91934, class = c("POSIXct", "POSIXt"))
    , filename = "V_responseDoseThreshold_Roger_1402574999.91934.R"
)
    , name = "I_responseDoseThreshold"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574999.95912, class = c("POSIXct", "POSIXt"))
    , filename = "I_responseDoseThreshold_Roger_1402574999.95912.R"
)
