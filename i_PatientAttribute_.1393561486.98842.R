new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
    , generatorCode = function () 
{
    clearanceRate * exp(rnorm(1, responseLoc, responseSD))
}
    , parameters = structure(list(responseLoc = 0, responseSD = 0.01), .Names = c("responseLoc", 
"responseSD"))
    , requirements = new("VariableList"
    , .Data = list(<S4 object of class structure("Variable", package = "CTDesignExperimenter")>)
)
    , provisions = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
)
