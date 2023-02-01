function Test-SecretVault {
    [CmdletBinding()]
    param (
        #Passed in from Test-SecretVault -Name
        [Parameter(Mandatory)]
        [Alias('Name')]
        [string]$VaultName,

        #Passed in from SecretManagement registered VaultParameters.
        [Parameter(Mandatory)]
        [Alias('VaultParameters')]
        [hashtable]$AdditionalParameters
    )
    $fixedHashMap=@{}
    $AdditionalParameters.Keys | ForEach-Object { $fixedHashMap.$_ = $AdditionalParameters.$_}
    # #Here is where you should test a vault
    # Write-Host -Fore Cyan 'Testing the vault!'

    if (-not ($AdditionalParameters.database)) {
        Write-Error "${VaultName}: `$AdditionalParameters.database not found but available: $($fixedHashMap.dAtAbAsE)"
        return $false
    }
    Write-Host "${VaultName}: Database found as using the lowercase key= $($AdditionalParameters.database)"

    return $true
}