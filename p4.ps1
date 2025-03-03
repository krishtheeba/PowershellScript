<#
Task 4 :
--------
Modify Task2 with single Write-host

#>


$name= $(whoami)
$version= $(get-host).version
$mycwd= $(get-location)
$myDate= $(get-date -UFormat %m-%d-%Y)

$c= $(Get-Process).length 

write-host "Login Name: $name
Working Powershell Version : $version
Working Directory Path : $mycwd
Today : $myDate

My Hostname : $(hostname)  # cmd with cmd
Total No.of Running Process :$c"


