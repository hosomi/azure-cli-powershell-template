# App Service Plan

:link: [App Service プラン - Azure App Service | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/app-service/overview-hosting-plans)  
:link: [App Service プランの管理 - Azure App Service | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/app-service/app-service-plan-manage)  

## Azure PowerShell

### New-AzAppServicePlan

App Service Plan の作成。  
（Azure Functions のサーバーレスプランは事前に作成する必要はありません。）  

:link: [New-AzAppServicePlan (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/new-azappserviceplan)  

```powershell
New-AzAppServicePlan `
  -Name "<Name>" `
  -ResourceGroupName "<ResourceGroupName>" `
  -Tier "<Tier>" ` # Free, Basic, S1, PremiumV2..
  -Location "Location" # japanwest, japaneast
```

### Get-AzAppServicePlan

App Service Plan の内容表示。  
（作成したプランの確認、sku 変更対象のプランの確認等。） 

:link: [Get-AzAppServicePlan (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/get-azappserviceplan)  

```powershell
Get-AzAppServicePlan
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Set-AzAppServicePlan

App Service Plan の更新。  
（sku を変更する事によりスケールアップ、スケールダウンが可能です。）  

:link: [Set-AzAppServicePlan (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/set-azappserviceplan)  

```powershell
Set-AzAppServicePlan 
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Tier "<Tier>" # Free, Basic, S1, PremiumV2..
```

### Remove-AzAppServicePlan

App Service Plan の削除。  

:link: [Remove-AzAppServicePlan (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/remove-azappserviceplan)

```powershell
Remove-AzAppServicePlan
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```
