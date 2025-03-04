$fname="C:\Users\Theeba\PSScripts\day2\rt.log"
$c=1
foreach( $v in get-content $fname){
echo "Line No $c :$v"
$c++
}

