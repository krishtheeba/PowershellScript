<#
Task8:
-----

Write a powershell script

read a login name from <STDIN>
         |
read a shell name from <STDIN>

sh ( or) bash (or) ksh --------> match
display login name and shellname

#>


$name =read-Host "Enter a Login Name"
if($name -ceq "root"){
	$var=read-host "Enter a shell name"
	if($var -eq "psh" -or $var -eq "sh" -or $var -eq "bash"){
		write-host "Login Name : $name `t Login Shell: $var"
	}
	else{
		write-host "Invalid Shell name"
	}
}
else{
	write-host "Sorry $name is not matched"
}
		
