# Numerical integration with Trapezoid and Midpoint rules


#### Program allows us to compute integrals numerically and compare them to the real value of this integral. It also shows area below graph of the function using Trapezoid rule, Midpoint rule and their relative errors. 

![GitHub Logo](/screenshots/blankGUI.png)


**Input values**
  * a - beginning of integraition interval
  * b - end of integration interval
  * f(x) - intergral function (a function should be in readable format for Matlab for example if we want to input f(x) = x^2 we should input it as x.^2 due to the fact x is a vector)
  * real value of integral - value of integral of f(x) at interval <a,b>
  * number of subintervals - for how many interval <a,b> should be divided in numerical integraion 

## Examples

 f(x) | a | b | real value of integral  
------------ | -------------| -------------| -------------
x.^2 | -3 | 3 | 18 
sin(x) | 0 | pi | 2 
x | 0 | 2 | 2 
1./(x.^2) | 1 | 3 | 2/3 
sqrt(x) | 0 | 4 | 5 
 
![GitHub Logo](/screenshots/example1.png)
 
![GitHub Logo](/screenshots/example2.png)
 
![GitHub Logo](/screenshots/example3.png)
 
![GitHub Logo](/screenshots/example4.png)
 
![GitHub Logo](/screenshots/example5.png)
