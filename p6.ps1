<#
Q1. Write a powershell script - display list of log files under working directory in below format

1. p1.log
2. p2.log
3. p3.log
..
10. p4.log

Total no. of files : 10
#>

$c=0
foreach($v in Get-ChildItem *.log){
	$c++
	echo "$c . $v.name"
}

write-host "------------------------------`nTotal No. of. log files : $c `n------------------------------------"