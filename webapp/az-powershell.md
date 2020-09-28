# Web App

:link: [Web App Service | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/app-service/web/)  

## Azure PowerShell

### New-AzWebApp

Web App の新規作成。  
（リソース名(`<Name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<Name>.azurewebsites.net`）  
（先に [App Service Plan](../appservice-plan/az-powershell.md) を作成してください、作成した App Service Plan 名を `-AppServicePlan` 引数に付与してください。）  
（リソースグループ、App Service プラン、`-Location` は何れも同じリージョンに配置する事を推奨します。）  

:link: [New-AzWebApp](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/new-azwebapp)  

```powershell
New-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -AppServicePlan "<AppServicePlan>" `
  -Location "<Location>" # japanwest, japaneast
```

### Get-AzWebApp

Web App の詳細表示。  

:link: [Get-AzWebApp (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/get-azwebapp)  

```powershell
Get-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

リソースグループ内のすべての Web App の詳細表示。  

```powershell
Get-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>"
```

### Start-AzWebApp

Web App を開始します。  

:link: [Start-AzWebApp (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/start-azwebapp)  

```powershell
Start-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Stop-AzWebApp

Web App を停止します。 

:link: [Stop-AzWebApp (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/stop-azwebapp)  

```powershell
Stop-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Restart-AzWebApp

Web App を再起動します。  

:link: [Restart-AzWebApp (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/restart-azwebapp)  

```powershell
Restart-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Set-AzWebApp

Web App の構成設定を管理。  

:link: [Set-AzWebApp (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/set-azwebapp)  

Case1. アプリケーション設定を構成する。  
``追加ではなく置き換えなので注意！``  

```powershell
$hash = @{}
$hash['WEBSITE_TIME_ZONE'] = "Tokyo Standard Time"

Set-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -AppSettings $hash # Hashtable の変数を利用。
```

追加及び更新したい場合は ``Get-AzWebApp`` と組合せて実行してください。  

```powershell
$webApp = Get-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" 

$appSettings = $webApp.SiteConfig.AppSettings

$hash = @{}
ForEach ($appSetting in $appSettings) {
  $hash[$appSetting.Name] = $appSetting.Value
}

$hash['WEBSITE_TIME_ZONE'] = "Tokyo Standard Time"

Set-AzWebApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -AppSettings $hash
```

---

### Slot

スロットに行う操作。  

#### New-AzWebAppSlot

Web App のスロットを作成します。  

:link: [New-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/new-azwebappslot)  

```powershell
New-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging
```

#### Get-AzWebAppSlot

Web App のスロットの詳細表示。  

:link: [Get-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/get-azwebappslot)  

```powershell
Get-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # production, staging
```

Web App のスロットの一覧表示。  

```powershell
Get-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

#### Start-AzWebAppSlot

Web App のスロットを開始します。  

:link: [Start-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/start-azwebappslot)  

```powershell
Start-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging
```


#### Stop-AzWebAppSlot

Web App のスロットを停止します。  

:link: [Stop-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/stop-azwebappslot)  

```powershell
Stop-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging
```

#### Restart-AzWebAppSlot

Web App のスロットを再起動します。  

:link: [Restart-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/restart-azwebappslot)  

```powershell
Restart-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Slot "<Slot>" # staging
```

#### Switch-AzWebAppSlot

Web App のスロットをスワップします。  

:link: [Switch-AzWebAppSlot (Az.Websites) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.websites/switch-azwebappslot)  

```powershell
Switch-AzWebAppSlot `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -SourceSlotName "<SourceSlotName>" ` # staging
  -DestinationSlotName "<DestinationSlotName>" # production
```
