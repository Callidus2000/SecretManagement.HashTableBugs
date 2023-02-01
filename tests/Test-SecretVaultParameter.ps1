# $modulePath = "$PSScriptRoot\..\SecretManagement.HashTableBug\SecretManagement.HashTableBug.psd1"
# Import-Module -force $modulePath
# Register-SecretVault -Name HashTableBugVault1 -ModuleName $modulePath -VaultParameters @{ database="database"}
# Register-SecretVault -Name HashTableBugVault2 -ModuleName $modulePath -VaultParameters @{ Database = "database"}
Test-SecretVault -Name "HashTableBugVault1", "HashTableBugVault2"