$nsgObject = Get-AzNetworkSecurityGroup `
  -Name "MeanStackNSG" `
  -ResourceGroupName "*****-********-****-****-****-************"

$nsgObject = Add-AzNetworkSecurityRuleConfig `
  -NetworkSecurityGroup $nsgObject `
  -Direction Inbound `
  -SourceAddressPrefix Internet `
  -SourcePortRange * `
  -DestinationAddressPrefix * `
  -DestinationPortRange 80 `
  -Priority 100 `
  -Protocol Tcp `
  -Access Allow `
  -Name open-port-80

Set-AzNetworkSecurityGroup -NetworkSecurityGroup $nsgObject

