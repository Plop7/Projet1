function disbonjour
{
param($prenom)
if ($prenom) {
echo "bonjour $prenom"
} else {
echo "il n'a pas di bonjour ..."
}
}
disbonjour ("Michel")
disbonjour ("")