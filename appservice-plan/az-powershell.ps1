# App Service Plan の作成。
#（Azure Functions のサーバーレスプランは事前に作成する必要はありません。）
New-AzAppServicePlan `
  -Name "<Name>" `
  -ResourceGroupName "<ResourceGroupName>" `
  -Tier "<Tier>" ` # Free, Basic, S1, PremiumV2..
  -Location "Location" # japanwest, japaneast

# App Service Plan の内容表示。
#（作成したプランの確認、sku 変更対象のプランの確認等。）
Get-AzAppServicePlan
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# App Service Plan の更新。
#（sku を変更する事によりスケールアップ、スケールダウンが可能です。）
Set-AzAppServicePlan 
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Tier "<Tier>" # Free, Basic, S1, PremiumV2..

# App Service Plan の削除。
Remove-AzAppServicePlan
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
