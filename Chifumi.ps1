for ($i=0; $i -lt 5; $i++) {
# Write-Output $i
clear
echo "+------------------------+"
echo "|-[1] : Papier-----------|"
echo "|-[2] : Caillou----------|"
echo "|-[3] : Ciseau-----------|"
echo "+------------------------+"

$user = Read-Host
clear
#echo "votre choix : " $user"
switch ($user){
"1"{echo "Papier contre"}
"2"{echo "Caillou contre"}
"3"{echo "Ciseaux contre"}
}
#echo "Ordinateur : " 
$comput = Get-Random -Maximum 4 -Minimum 1

switch ($comput){
"1"{echo "Papier"}
"2"{echo "Caillou"}
"3"{echo "Ciseaux"}
}

function Regle
{
param($user,$comput)
if (($user -eq "1" -and $comput -eq 2) -or ($user -eq "2" -and $comput -eq 3) -or ($user -eq "3" -and $comput -eq 1)) {
echo "Gagné"
}
elseif (($user -eq "1" -and $comput -eq 1) -or ($user -eq "2" -and $comput -eq 2) -or ($user -eq "3" -and $comput -eq 3)) { 
echo "Egalité"
}
else {
echo "perdu"
}
}

Regle ($user,$comput)


sleep 2

}

