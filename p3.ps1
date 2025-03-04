#Redirection symbol (>)

$fname="C:\Users\theeba\PSScripts\day2\Inventory.txt"
for( $i=0; $i -lt 3 ; $i++){

$var=read-host "Enter a text"

echo $var > $fname      # like set-content - overwrites existing content

}
