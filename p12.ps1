<#
Q2.

Write a powershell script following the below steps:

step 1: create an empty array : $host=@()
step 2: using while loop - 5 times
		read a hostname from <STDIN>
		Add input hostname to existing Array ( Add to host)
step 3: Display total no. of Array Elements
step 4: using foreach loop, display list of hostnames
step 5: Modify 1st Index hostname ---> 127.0.0.1
step 6: step 4 with updated hostname 

#>

$my_host=@() # empty Array
echo "Size: $($my_host.count)"  
$c=0
while($c -lt 5){
	$v= read-host "Enter the Hostname"   # reading data from <STDIN>
	$my_host += $v     # $my_host = $my_host + $v  Append operation
	$c++
}

echo "
List of Host names Details:-
==========================="

foreach($v in $my_host){
	echo $v
}

$my_host[1]="127.0.0.1"  # updating existing value
echo "`nUpdated Hostname Details:-
=========================="

# $my_host.foreach({$_})

foreach($v in $my_host){
	echo $v
}
	






