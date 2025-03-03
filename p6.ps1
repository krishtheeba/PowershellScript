$n=450

if($n -gt 500){
	write-host "True Only"
}
else{
	write-host "False Block"
}

#------------------------------------------

$name= "root"

if($name -eq "root"){
	write-host "Login name is success"
}
else{
	write-host "Login Failed"
}

#-------------------------------------------

if((Get-process ).length -lt 100){
	write-host "Total no. of Process count is below 100"
}else{
	write-host "No. of Process is greater than 100"
}
#---------------------------------------------------
