<#
task
====
Write a powershell script

Initialize a pin var $pin=1234

read a pin no from <stdin>

compare pin no from existing pin
  |-----------pin matched at Attempt :1 2 3 

  |----------pin not matched.   

Max Pin limit as 3
------------------
|
|------------Pin is Blocked.
pin=1234

Enter a pin: 1234
Success-pin matched -1 

Enter a pin: 22323
Enter a pin:1234
Success-pin matched -2 

Enter a pin: 22323
Enter a pin: 3333
Enter a pin : 1234
Success- pin matched -3

Enter a pin: 22323
Enter a pin: 23232
Enter a pin : 3332121

Pin blocked

#>


$pin=1234

$c=0

while($c -lt 3){
	[int]$p=read-host "Enter a Pin"
	$c++
	
	if($pin -eq $p){
		echo "Success - Pin Matched at $c time"
		break  # exit from loop
	}
}

if($pin -ne $p){
	echo " Sorry Your Pin is blocked"
}
















