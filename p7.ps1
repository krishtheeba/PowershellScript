<#
Q2. Write a powershell script - display menu driven program

###################### SYSTEM INFO  ###################
#						      #
#	1. List of top 10 Process- sort memory usage  #
#	2. List running service			      #
#       3. Total no. of alias 			      #
#       4. Display Process Details                    #
#       5. Display Login name and Login Path          #
#						      #
#######################################################


Enter a Choice: ..............
#>


while(1){

echo "
###################### SYSTEM INFO  ###################
#						      #
#	1. List of top 10 Process- sort memory usage  #
#	2. List running service			      #
#       3. Total no. of alias 			      #
#       4. Display Process Details                    #
#       5. Display Login name and Login Path          #
#	6. Exit					      #
#######################################################
"

[int]$choice = read-host "Enter your choice"

if($choice -eq 1){
	cls
	echo "Sorted processes by memory usage"
	echo "---------------------------------------------------------------"
	get-process|sort-object -property WS|select-object -last 10
	echo "----------------------------------------------------------------"
}
elseif($choice -eq 2){
	cls
	echo "List of Running Service"
	echo "------------------------------------------"
	Get-Service|where-object{$_.status -eq "running"}
	echo "------------------------------------------"
	echo "Total no. of Running Service : $((Get-Service|where-object{$_.status -eq "running"}).length)"
	echo "------------------------------------------"
}
elseif($choice -eq 3){
	cls
	$v=$((Get-Alias).length)
	echo "Total no. of Alias : $v"
}
elseif($choice -eq 4){
	cls
	echo "Current Process Details"
	Get-Process
}
elseif($choice -eq 5){
	cls
	echo "Login Name : $(whoami) `t Login Path : $HOME"
}
elseif($choice -eq 6){
	echo "Thank You.."
	break
}
else{
	echo "Sorry !! Invalid Choice "
}

}	
