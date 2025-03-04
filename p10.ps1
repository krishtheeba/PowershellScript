<#
Task
----
Q1.

Write a powerscript
Given Array:
	
$emp = @("ram,sales,2000","Arun,hr,1000","Vijay,prod,10000","Raghav,prod,2212")

display Emp name and Emp Working Department to <STDOUT>
calculate the sum of Emp cost
Display Total emp cost to <STDOUT>

Note: use split()

Expected result
---------------
Emp name:  ram		Working department: sales
Emp name:  Arun	 	Working department: hr
Emp name:  Vijay 	Working department: prod
Emp name:  Raghav	Working department: prod
--------------------------------------------------
Total Employee Cost      :  15212
-------------------------------------------------

$n,$d,$c="ram,prod,1000"
..
#>


$emp =@("ram,sales,2000","Arun,hr,1000","Vijay,prod,10000","Raghav,prod,2212")
$total=0

foreach($var in $emp){  		 # Looping statement
	$n,$d,$c=$var.split(",")
	echo "Emp Name : $n`t Working dept: $d"
	$total= $total + [int]$c
}
Write-host "=============================================="
Write-host "`t Total Employees Cost  :  $total `t"
Write-host "=============================================="

