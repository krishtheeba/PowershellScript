$emp =@("ram,sales,2000","Arun,hr,1000","Vijay,prod,10000","Raghav,prod,2212")
$total=0

$emp.foreach({
	$n,$d,$c=$_.split(",")
	echo "Emp Name : $n`t Working dept: $d"
	$total= $total + [int]$c
})
Write-host "=============================================="
Write-host "`t Total Employees Cost  :  $total `t"
Write-host "=============================================="