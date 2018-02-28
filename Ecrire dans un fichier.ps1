 $serv = Get-Service | Where-Object {$_.Status -eq "Stopped"}
 foreach ($s in $serv){
 Add-Content -Path C:\Users\plop\Desktop\100\plop.txt -Value ($s.name+"     --->     "+ $s.DisplayName)
 }
 #}