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
    , timestamp = structure(1402574529.82488, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574529.82488.R"
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
    , timestamp = structure(1402574529.82488, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574529.82488.R"
)
    , name = "I_liverFunction"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82543, class = c("POSIXct", "POSIXt"))
    , filename = "I_liverFunction_Roger_1402574529.82543.R"
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81693, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574529.81693.R"
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
    , timestamp = structure(1402574529.81693, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574529.81693.R"
)
    , name = "I_age"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82073, class = c("POSIXct", "POSIXt"))
    , filename = "I_age_Roger_1402574529.82073.R"
)
new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82659, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverOK_Roger_1402574529.82659.R"
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
    , timestamp = structure(1402574529.82488, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverFunction_Roger_1402574529.82488.R"
)
)
)
    , provisions = new("Variable"
    , name = "liverOK"
    , description = "Patient has sufficient liver function."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82659, class = c("POSIXct", "POSIXt"))
    , filename = "V_liverOK_Roger_1402574529.82659.R"
)
    , name = "I_liverOK"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82706, class = c("POSIXct", "POSIXt"))
    , filename = "I_liverOK_Roger_1402574529.82706.R"
)
new("VariableGenerator"
    , insertSubType = "EligibilityCriterion"
    , outputVariable = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82193, class = c("POSIXct", "POSIXt"))
    , filename = "V_isOldEnough_Roger_1402574529.82193.R"
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
    , timestamp = structure(1402574529.81693, class = c("POSIXct", "POSIXt"))
    , filename = "V_age_Roger_1402574529.81693.R"
)
)
)
    , provisions = new("Variable"
    , name = "isOldEnough"
    , description = "Patient is old enough"
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.82193, class = c("POSIXct", "POSIXt"))
    , filename = "V_isOldEnough_Roger_1402574529.82193.R"
)
    , name = "I_isOldEnough"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.82241, class = c("POSIXct", "POSIXt"))
    , filename = "I_isOldEnough_Roger_1402574529.82241.R"
)
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
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81959, class = c("POSIXct", "POSIXt"))
    , filename = "V_responseDoseThreshold_Roger_1402574529.81959.R"
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
    , timestamp = structure(1402574529.81835, class = c("POSIXct", "POSIXt"))
    , filename = "V_clearanceRate_Roger_1402574529.81835.R"
)
)
)
    , provisions = new("Variable"
    , name = "responseDoseThreshold"
    , description = "dose threshold for binary response event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81959, class = c("POSIXct", "POSIXt"))
    , filename = "V_responseDoseThreshold_Roger_1402574529.81959.R"
)
    , name = "I_responseDoseThreshold"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.84309, class = c("POSIXct", "POSIXt"))
    , filename = "I_responseDoseThreshold_Roger_1402574529.84309.R"
)
new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81898, class = c("POSIXct", "POSIXt"))
    , filename = "V_toxDoseThreshold_Roger_1402574529.81898.R"
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
    , timestamp = structure(1402574529.81835, class = c("POSIXct", "POSIXt"))
    , filename = "V_clearanceRate_Roger_1402574529.81835.R"
)
)
)
    , provisions = new("Variable"
    , name = "toxDoseThreshold"
    , description = "dose threshold for binary toxicity event"
    , checkDataType = function(x)is.double(x)&(x>=0)
    , author = "Roger"
    , timestamp = structure(1402574529.81898, class = c("POSIXct", "POSIXt"))
    , filename = "V_toxDoseThreshold_Roger_1402574529.81898.R"
)
    , name = "I_toxDoseThreshold"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.84526, class = c("POSIXct", "POSIXt"))
    , filename = "I_toxDoseThreshold_Roger_1402574529.84526.R"
)
new("VariableGenerator"
    , insertSubType = "ScheduleTreatment"
    , outputVariable = new("Variable"
    , name = "dose"
    , description = "dose"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402574529.8552, class = c("POSIXct", "POSIXt"))
    , filename = "V_dose_Roger_1402574529.8552.R"
)
    , generatorCode = function()dose
    , parameters = structure(list(dose = 5), .Names = "dose")
    , requirements = NULL
    , provisions = new("Variable"
    , name = "dose"
    , description = "dose"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402574529.8552, class = c("POSIXct", "POSIXt"))
    , filename = "V_dose_Roger_1402574529.8552.R"
)
    , name = "I_dose"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.85567, class = c("POSIXct", "POSIXt"))
    , filename = "I_dose_Roger_1402574529.85567.R"
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
new("VariableGenerator"
    , insertSubType = "DesignParameter"
    , outputVariable = new("Variable"
    , name = "SampleSizeMax"
    , description = "Upper bound for sample size"
    , checkDataType = .Primitive("is.numeric")
    , author = "Roger"
    , timestamp = structure(1402574529.82019, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMax_Roger_1402574529.82019.R"
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
    , timestamp = structure(1402574529.82019, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMax_Roger_1402574529.82019.R"
)
    , name = "I_SampleSizeMax"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.85403, class = c("POSIXct", "POSIXt"))
    , filename = "I_SampleSizeMax_Roger_1402574529.85403.R"
)
new("VariableGenerator"
    , insertSubType = "StoppingCriterion"
    , outputVariable = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.85885, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMaxIsReached_Roger_1402574529.85885.R"
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
    , timestamp = structure(1402574529.82019, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMax_Roger_1402574529.82019.R"
)
)
)
    , provisions = new("Variable"
    , name = "SampleSizeMaxIsReached"
    , description = "Upper bound for sample size has been reached."
    , checkDataType = .Primitive("is.logical")
    , author = "Roger"
    , timestamp = structure(1402574529.85885, class = c("POSIXct", "POSIXt"))
    , filename = "V_SampleSizeMaxIsReached_Roger_1402574529.85885.R"
)
    , name = "I_SampleSizeMaxIsReached"
    , description = "NEED DESCRIPTION"
    , author = "Roger"
    , timestamp = structure(1402574529.8593, class = c("POSIXct", "POSIXt"))
    , filename = "I_SampleSizeMaxIsReached_Roger_1402574529.8593.R"
)
)
)
    , name = "defaultScenario"
    , description = "default scenario"
    , author = "Roger"
    , timestamp = structure(1402574530.58549, class = c("POSIXct", "POSIXt"))
    , filename = "S_defaultScenario_Roger_1402574530.58549.R"
)
