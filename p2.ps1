<#
4. Read a student name

format -> Title case   - 
ex:- Arun Gayathri Yahoo Paul  - okay
     ARUN  Arun.V  Arun<space>PAUL<Vijay>  V.Arun  - Invalid

Read a student ID

format -> start with single Uppercase character A to E followed by 3 digits 

display student name and ID
#>

$name=read-host "Enter the Name"

if( $name -cmatch "^[A-Z][a-z]+$"){
	echo "Valid Format"
}
else{
	echo "Invalid Format"
	exit
}

$id=read-host "Enter the Id"

if($id -match "^[A-E]\d{3}$"){
	echo "Valid Format"
}
else{
	echo "Invalid Format"
	exit
}

echo "Name:$name`tId:$id"







