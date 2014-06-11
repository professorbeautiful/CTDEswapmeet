new("Scenario"
    , inserts = new("ListOfInserts"
    , .Data = list(
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "liverFunction"
    , description = "Liver function"
    , checkDataType = function(x) is.numeric(x)
    , author = "Roger"
    , timestamp = structure(1402430209.97968, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97968, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430209.98042, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97041, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97041, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430209.97479, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430209.98198, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97968, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , provisions = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430209.98198, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430209.98268, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430209.97651, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97041, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , provisions = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430209.97651, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430209.97719, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "clearanceRate"
    , description = "generic clearance rate variable"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97186, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97186, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430209.98505, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97327, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97186, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , provisions = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97327, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.00271, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97258, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430209.97186, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , provisions = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97258, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.00497, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "ScheduleTreatment"
    , outputVariable = new("Variable"
    , name = "dose"
    , description = "dose"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402430210.01305, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , generatorCode = function()dose
    , parameters = structure(list(dose = 5), .Names = "dose")
    , requirements = NULL
    , provisions = new("Variable"
    , name = "dose"
    , description = "dose"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402430210.01305, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.01351, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "PatientOutcome"
    , outputVariable = new("Variable"
    , name = "response"
    , description = "Clinical response (binary)"
    , checkDataType = function(x){
                                 is.logical(x) & length(x)==1
                               }
    , author = "Roger"
    , timestamp = structure(1402430210.01452, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430210.01305, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402430209.97327, class = c("POSIXct", "POSIXt"))
    , filename = ""
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
    , timestamp = structure(1402430210.01452, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.015, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "DesignParameter"
    , outputVariable = new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402430209.97399, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , generatorCode = function(){
                      SampleSizeMax
                    }
    , parameters = structure(list(SampleSizeMax = 2), .Names = "SampleSizeMax")
    , requirements = NULL
    , provisions = new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402430209.97399, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.01186, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
new("VariableGenerator"
    , insertSubType = "StoppingCriterion"
    , outputVariable = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430210.01666, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , generatorCode = function(){
      SampleSizeMax <= trialData$trialSummaries$NpatientsEnrolled
    }
    , parameters = list()
    , requirements = new("VariableList"
    , .Data = list(
new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402430209.97399, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , provisions = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402430210.01666, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
    , name = "NEED NAME"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402430210.01714, class = c("POSIXct", "POSIXt"))
    , filename = ""
)
)
)
    , name = "S_defaultScenario_Roger_NA"
    , description = "default scenario"
    , author = "Roger"
    , timestamp = structure(1402451515.57009, class = c("POSIXct", "POSIXt"))
    , filename = "S_defaultScenario_Roger_NA.R"
)
