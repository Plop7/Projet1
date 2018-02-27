cd ~/Desktop/
mkdir 100
for($i=0;$i -lt 100;$i++){
New-Item -Path ~/Desktop/100/$i.txt -Value "Je m'appele $i"
}