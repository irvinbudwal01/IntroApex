// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';

// System.debug(Calculator.Add(3, 5));
// System.debug(Calculator.Multiply(5, 3));
// System.debug(Calculator.Divide(18, 6));
// System.debug(Calculator.Divide(18, 0));
// System.debug(Calculator.Mod(18, 6));
// System.debug(Calculator.Mod(28, 3));
// System.debug(Calculator.Mod(28, 0));
System.debug(Calculator.Calculate('1 + 2 * 3'));
System.debug('****************ANSWER ABOVE*******************');
//System.debug('My name is ' + tempvar);