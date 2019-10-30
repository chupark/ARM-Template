Get-AzKeyVaultSecret -Name "ubuntuDefaultPassword" `
                     -VaultName "pcw-keystore" | FL -Property *

Get-AzKeyVault -ResourceGroupName "RG-KeyStore" -VaultName "pcw-keystore"

#
/subscriptions/814b80ef-928b-4f54-87c6-35df36270a65/resourceGroups/RG-KeyStore/providers/Microsoft.KeyVault/vaults/pcw-keystore