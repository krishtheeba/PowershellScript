<#
TAsk9:
----
read a hostname from <STDIN>
check hostname is Oracle
		|
		read a port number from <STDIN>
		Check port no 501-599
				----
				 -> Hostname
				 -> PortNumber
#>

$h= read-host "Enter a hostname"
if($h -eq "oracle"){
	[int]$po= read-host "Enter the Port Number"
	if($po -gt 500 -and $po -lt 600){
		write-host "Hostname : $h"
		write-host "Port Number : $po"
	}
	else{
		write-host "Invalid Port Number"
	}
}else{
	write-host "Invalid Hostname"
}