# Web App の新規作成。  
#（リソース名(`<Name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<Name>.azurewebsites.net`）  
New-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -AppServicePlan "<AppServicePlan>" `
  -Location "<Location>" # japanwest, japaneast

# Web App の詳細表示。  
Get-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# リソースグループ内のすべての Web App の詳細表示。  
Get-AzWebApp `
   -ResourceGroupName "<ResourceGroupName>"

# Web App を開始します。  
Start-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# Web App を停止します。 
Stop-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# Web App を再起動します。  
Restart-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# ---

# Slot

# Web App のスロットを作成します。  
New-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging

# Web App のスロットの詳細表示。  
Get-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # production, staging

# Web App のスロットを開始します。  
Start-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging

# Web App のスロットを停止します。  
Stop-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging

# Web App のスロットを再起動します。  
Restart-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging

# Web App のスロットをスワップします。  
Switch-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -SourceSlotName "<SourceSlotName>" ` # staging
  -DestinationSlotName "<DestinationSlotName>" # production

