
<#
Write a powershell 
read a shell name from <STDIN>

input shellname is bash -----> profile="~/.bashrc"
input shellname is psh ------>profile="$PSHOME/profile.ps1"
input shellname is ksh ------> profile="~/.kshrc"
|
------------- all input doesnot match ---> default profile="C:/profile.ps1"
					   default shellname="/sbin/nologin"

|--------display Shellname and profile name

#>

$var=read-host "Enter the shell name"

if($var -eq "bash"){
	$p="~/.bashrc"
}elseif($var -eq "psh"){
	$p="$PSHOME/profile.ps1"
}elseif($var -eq "ksh"){
	$p="~/.kshrc"
}else{
	write-Host "Sorry $var shell name is not matched"
	$p="C:/profile.ps1"
	$var="/sbin/nologin"
}

Write-host "Shell name: $var `t Profile:$p"

			


