new("Variable"
    , name = "response"
    , description = "Clinical response (binary)"
    , checkDataType = function(x){
                                 is.logical(x) & length(x)==1
                               }
    , author = "Roger"
    , timestamp = structure(1402574529.85669, class = c("POSIXct", "POSIXt"))
    , filename = "V_response_Roger_1402574529.85669.R"
)
