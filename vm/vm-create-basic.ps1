New-AzVM `
  -ResourceGroupName *****-********-****-****-****-************ `
  -Name MeanStack `
  -Image Canonical:UbuntuServer:16.04-LTS:latest `
  -Credential (Get-Credential)