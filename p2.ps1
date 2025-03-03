<#
Task2
-----

Write a powershell script

$variable= value

A . using write-host (or) echo , display following details

login name
powershell version
current working directory
date(mm/dd/yyyy)

B. using write-out display details

hostname
total no.running process  

#>


$name= $(whoami)
$version= $(get-host).version
$mycwd= $(get-location)
$myDate= $(get-date -UFormat %m-%d-%Y)

write-host "Login Name: $name"
write-host "Working Powershell Version : $version"
write-host "Working Directory Path : $mycwd"
echo "Today : $myDate"

echo "" # empty line

write-output "My Hostname : $(hostname)"  # cmd with cmd
$c= $(Get-Process).length 
write-output "Total No.of Running Process :$c"







































