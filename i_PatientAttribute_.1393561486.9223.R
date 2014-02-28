new("VariableGenerator"
    , insertSubType = "PatientAttribute"
    , outputVariable = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
    , generatorCode = function () 
{
    rlognorm(1, ageMean, ageCV)
}
    , parameters = structure(list(ageMean = 50, ageCV = 0.5), .Names = c("ageMean", 
"ageCV"))
    , requirements = NULL
    , provisions = new("Variable"
    , name = "age"
    , description = "age, as a nonnegative number"
    , checkDataType = function (x) 
is.double(x) & (x >= 0)
)
)
