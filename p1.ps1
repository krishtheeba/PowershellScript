<#
File: net_conf.txt
------------------
host01:10.20.30.40
host02:10.2.3.4
host03:10.20.30.2
host04:10.20.30.0
host05:10.20.30.4

step 1: create a empty hash_variable

step 2: using file handling read file content (line by line)

step 3: Split each line into multiple values ( "key","value")
		
	$s="host01:10,20,30,40"
        $k,$v=$s.split(":")

step 4: Add data (key,value) to existing dic
step 5: using keys, display key,value
step 6: update host03(key)--> ipaddress(127.0.0.1) value
step 7: display updated hash
step 8: write updated hash to new file
#>

$my_host=@{}  # empty hash 

echo "A.Size: $($my_host.count)"

foreach($var in Get-Content "C:\Users\Theeba\PSScripts\day3\net_conf.txt"){
	$k,$v= $var.split(":")
	$my_host.add($k,$v)
	# $my_host[$k]=$v
}
echo "B.Size: $($my_host.count)"

echo "`nHOSTNAME`tIPADDRESS"
foreach($var in $my_host.keys){
	echo "$var `t $($my_host[$var])"
}

$my_host["host03"]="127.0.0.1"    # existing hash table updation

echo "`nUPDATED IP-DETAILS"
echo "`nHOSTNAME`tIPADDRESS"
foreach($var in $my_host.keys){
	echo "$var `t $($my_host[$var])"
}

$fname=read-host "Enter a filename"

if(test-path $fname){
	Write-host "File: $fname is already exist"
	exit # exit from script
}
else{
	foreach($k in $my_host.keys){
		echo "$k`:$($my_host[$k])" >> $fname    # write hashtable to file
	}
}




















