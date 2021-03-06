# Boucle de listage avec foreach
$fruits = @("pomme", "poire", "banane", "plop", "plup")
ForEach ($item in $fruits) {
echo "$item `n"
}

#Boucle de listage avec for jusqu'a un nombre prédéfini
for ($i=0; $i -lt 110; $i++) {
Write-Output $i
}

#Boucle de listage avec while
$fruits = @("pomme", "poire", "banane", "plop", "plup")
$i = 0
while ($i -lt $fruits.Length) 
{
$fruits[$i];
$i++;
}

<#
$i =0
do{
si++
}until($i -eq 10)
}
#>