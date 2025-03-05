
<#
Task
======
read a csv file
Find sales department and replace to production 
-match    ====>  -replace
#>

foreach($var in (Get-content .\emp.csv)){
	if( $var -match "sales"){
		$var -replace "sales","production"
	}
}

================================================================================
(base) PS C:\Users\theeba\PSScripts\day3> foreach($var in (Get-Process)){
>> if( $var -match "t.$"){
>> echo $var
>> }
>> }

(base) PS C:\Users\theeba\PSScripts\day3> foreach($var in (Get-Process)){
>> if( $var -match "t.$"){
>> $var -replace "svchost","SERVICE"
>> }
>> }

(base) PS C:\Users\theeba\PSScripts\day3> "programming java" -replace "java|perl|ruby","script"
programming script
(base) PS C:\Users\theeba\PSScripts\day3> $dir=@("p1.log","p2.java","p3.txt","p2.sh","p4.ps1","p5.log")
(base) PS C:\Users\theeba\PSScripts\day3>
(base) PS C:\Users\theeba\PSScripts\day3> foreach($var in $dir){
>> $var -replace ".log",".txt"
>> }
p1.txt
p2.java
p3.txt
p2.sh
p4.ps1
p5.txt