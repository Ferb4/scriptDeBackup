<#
description : Script de sauvegarde
Usage : BackupsClient.ps1
#>
$dossierSauvegarde = "C:\LARIE\"
$destination = "\\WIN-JE6D7ISRGUF\BackupsClient"
try {
Copy-Item -path $dossierSauvegarde -Destination "$destination\$env:COMPUTER" -Recurse
Write-Host "les fichiers ont été sauvegarder"
}
catch {
    Write-Host "erreur dans la sauvegarde :$_"
}