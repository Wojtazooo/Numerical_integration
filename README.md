# Numerical integration with Trapezoid and Midpoint rules


#### Program allows us to compute integral numerically and compare it to the real value of this it. It also shows area below the graph of the function using Trapezoid rule, Midpoint rule and their relative errors. 

![GitHub Logo](/screenshots/blankGUI.png)

## Input values
  * a - beginning of integraition interval
  * b - end of integration interval
  * f(x) - intergral function (a function should be in readable format for Matlab for example if we want to input f(x) = x^2 we should input it as x.^2 due to the fact x is a vector)
  * real value of integral - value of integral of f(x) at interval <a,b>
  * number of subintervals - for how many interval <a,b> should be divided in numerical integraion 
  
## Output
  * Midpoint rule plot
     * f(x) plot
     * visualization of Midpoint rule
     * computed value of integral with Midpoint rule
     * relative error of Midpoint rule 
  * Trtapezoidal rule plot
     * f(x) plot
     * visualization of Trapezoidal rule
     * computed value of integral with Trapezoidal rule
     * relative error of Trapozoidal rule 
  

## Examples

 f(x) | a | b | real value of integral  
------------ | -------------| -------------| -------------
x.^2 | -3 | 3 | 18 
sin(x) | 0 | pi | 2 
x | 0 | 2 | 2 
1./(x.^2) | 1 | 3 | 2/3 
sqrt(x) | 0 | 4 | 16/3 
 
![GitHub Logo](/screenshots/example1.png)
 
![GitHub Logo](/screenshots/example2.png)
 
![GitHub Logo](/screenshots/example3.png)
 
![GitHub Logo](/screenshots/example4.png)
 
![GitHub Logo](/screenshots/example5.png)
