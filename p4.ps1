function f1{
$v1=10   # default scope local

$global:v2=20
$local:v3=30

echo $v1
echo $v2
echo $v3

&{
	echo "====> $v1"
	echo "====> $v2"
	echo "====> $v3"
}
}



f1
echo "from mainscript===> $v1"
echo "from mainscript===> $v2"
echo "from mainscript====> $v3"

-------------------------------------

Module
======

file1.psm1            file2.ps1
=========             ========
|                       import-module  file1

--------------->              

function get-nametest{
}

function get-idtest{
}

function set-idtest{
}

export-modulemember -function "get-*"



==================================================================================

cmdlet--> verb-noun
            -------
              |----object
.net class
     -----
       |-----instance


class classname{
	
		properties
		method
}



class Myclass{

		[string]$name
		
		display(){
			Write-host "...."
		}
		
		#constructor
		Myclass([string]name){
		$this.name=$name
		}

  #static member
}


[Myclass]::new("Sam") --> Instance



[Myclass]::static_member_property

[MyClass]::static_member()

=========================================================================================



