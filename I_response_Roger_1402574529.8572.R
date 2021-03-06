new("VariableGenerator"
    , insertSubType = "PatientOutcome"
    , outputVariable = new("Variable"
    , name = "response"
    , description = "Clinical response (binary)"
    , checkDataType = function(x){
                                 is.logical(x) & length(x)==1
                               }
    , author = "Roger"
    , timestamp = structure(1402574529.85669, class = c("POSIXct", "POSIXt"))
    , filename = "V_response_Roger_1402574529.85669.R"
)
    , generatorCode = function()
                                           responseDoseThreshold < dose
    , parameters = list()
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "dose"
    , description = "dose"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402574529.8552, class = c("POSIXct", "POSIXt"))
    , filename = "V_dose_Roger_1402574529.8552.R"
)
new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81959, class = c("POSIXct", "POSIXt"))
    , filename = "V_responseDoseThreshold_Roger_1402574529.81959.R"
)
)
)
    , provisions = new("Variable"
    , name = "response"
    , description = "Clinical response (binary)"
    , checkDataType = function(x){
                                 is.logical(x) & length(x)==1
                               }
    , author = "Roger"
    , timestamp = structure(1402574529.85669, class = c("POSIXct", "POSIXt"))
    , filename = "V_response_Roger_1402574529.85669.R"
)
    , name = "I_response"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.8572, class = c("POSIXct", "POSIXt"))
    , filename = "I_response_Roger_1402574529.8572.R"
)
