
$pin=1234

[int]$p= read-host "Enter the Pin"

if($pin -eq $p){
	echo "Success - Pin Matched"
}
else{
	echo "Failed - Pin Not Matched"
}
