<#
Q3. File: Dept.txt
    --------------
	admin
	sales
	Hr
	Prod
	QA
	CRM
	DBA
   ----------------

A. Write a powershell script - using file handling , read above dept.txt
 ignore following departments -- sales, QA, HR
 display remaining department names to <STDOUT>

B.  ignore following departments -- sales, QA, HR
 write remaining department names to <NEW FILE>
#>


foreach( $v in get-content "C:\Users\Theeba\PSScripts\day2\dept.txt"){
	if( $v -eq "sales" -or $v -eq "QA" -or $v -eq "HR"){
		continue
	}
	else{
		#echo $v
		echo $v >> D1.txt
	}

}
