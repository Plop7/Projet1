cd ~/Desktop/
mkdir 100
for($i=0;$i -lt 101;$i++){
New-Item -Path ~/Desktop/100/ -Name $i".txt"  -Value "Je m'appele $i"
}


cd ~/Desktop/100/
for($i=0;$i -lt 101;$i++){
if ($i % 2){
Get-Item -Path C:\Users\plop\Desktop\100\$i.txt | Rename-Item -NewName "$i.old"
}
}


$prop = Get-Item -Path .\*.old | fl name, Length
$tab = @($prop.Name, $prop.Length)
foreach ($prop in $prop){
$tab
}


$octecttotal = 0
$files = Get-ChildItem -path . | Where-Object {$_.Name -like "*.old"}

foreach ($f in $files) {
Write-Host "-------------------------------------------"
Write-Host -ForegroundColor DarkCyan " Nom du fichier: $($f.name)"
Write-Host -ForegroundColor green " Taille du fichier: $($f.length) octect"
Write-Host "-------------------------------------------"

$octecttotal+=$f.length
<#supprime les fichiers selectionner
$f.Delete()
#>
}

Write-Host "`n >> le poids total des fichiers .old est de $octecttotal octect"