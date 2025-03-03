<#

Task 3:
--------
Write a powershell script

read N value - int type

read M value - double type

read X value - String Type

Display input Value and its Data-Type

#>

$n= read-host "Enter N Value"
$m= read-host "Enter M Value"
$x= read-host "Enter X Value" # "12333" 

echo "Current Type and Value "

echo "n Value : $n`t type:$($n.getType().name)
m Value : $m`t type:$($m.getType().name)
x Value : $x`t type:$($x.getType().name)"

$n=[int]$n # Typecasting to int   "12.33"--> 12
$m=[Double]$m #Typecasting to Double "12"  --> 12.0

echo "After TypeCasting
---------------------------------
n Value:$n`t type:$($n.getType().name)
m Value:$m`t type:$($m.getType().name)
x Value:$x`t type:$($x.getType().name)
----------------------------------"