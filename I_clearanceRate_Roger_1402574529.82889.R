new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81835, class = c("POSIXct", "POSIXt"))
    , filename = "V_clearanceRate_Roger_1402574529.81835.R"
)
    , generatorCode = function() {
      #We don't really need Multiplier. Just testing out the parameter idea.
      #      if(missing(Multiplier)) Multiplier = 1
      return(exp(rnorm(1, mean=log(clearanceLocation), sd=clearanceSD))
      )  
    }
    , parameters = structure(list(clearanceLocation = 6, clearanceSD = 1), .Names = c("clearanceLocation", 
"clearanceSD"))
    , requirements = new("VariableList"
    , .Data = list()
)
    , provisions = new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81835, class = c("POSIXct", "POSIXt"))
    , filename = "V_clearanceRate_Roger_1402574529.81835.R"
)
    , name = "I_clearanceRate"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82889, class = c("POSIXct", "POSIXt"))
    , filename = "I_clearanceRate_Roger_1402574529.82889.R"
)
