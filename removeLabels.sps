* Encoding: UTF-8.
* removeLabels
* by Jamie DeCoster

* This program can be used to remove variables labels and/or value labels from 
* a list of variables.

**** Usage: removeLabels(variable, value)
**** "variable" is a list of strings indicating the names of variables that should have their 
* variable labels removed. You can also set variable = "All" to remove all variable labels, 
* or to None to remove no variable labels. This is set to None by default.
**** "value" is a list of strings indicating the names of variables that should have their value
* labels removed. You can also set variable = "All" to remove all variable labels, or to None
* to remove no variable labels. This is set to None by default.

BEGIN PROGRAM PYTHON3.
import spss

def removeLabels(variable = None, value = None):
# Definte variable list for all
    if (variable == "All"):
        variable = []
        for varnum in range(spss.GetVariableCount()):
            variable.append(spss.GetVariableName(varnum))

# Remove variable labels
    if (variable != None):
        for v in variable:
            spss.Submit("variable label {0}.".format(v))
            
# Remove value labels
    if (value == "All"):
        spss.Submit("value labels all.")
    elif (value != None):
        for v in value:
            spss.Submit("value labels {0}.".format(v))
end program python.

*****
* Version History
*****
* 2020-08-07 Created
