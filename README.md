# removeLabels
This is an SPSS Python macro that can be used to remove variable labels and/or value labels from a list of variables

## Usage
**removeLabels(variable, value)**
* "variable" is a list of strings indicating the names of variables that should have their variable labels removed. You can also set variable = "All" to remove all variable labels, or to None to remove no variable labels. This is set to None by default.
* "value" is a list of strings indicating the names of variables that should have their value labels removed. You can also set variable = "All" to remove all variable labels, or to None to remove no variable labels. This is set to None by default.

## Example
**removeLabels(variable = ["Q1", "Q2", "Q3", "Race", "Female"],  
value = ["Female"])**  
* This command would remove the variable labels from the Q1, Q2, Q3, Race, and Female variables.
* It would also remove the value labels from the Female variable.

This and other SPSS Python Extension functions can be found at http://www.stat-help.com/python.html
