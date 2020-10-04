# Functions

:link: [Azure Functions サーバーレス コンピューティング | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/functions/)  

## Azure PowerShell

:link: [Az.Functions Module | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions)  

### Get-AzFunctionAppAvailableLocation

Functions で利用できるプランをサポートするリージョンの一覧を表示します。  

:link: [Get-AzFunctionAppAvailableLocation (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/get-azfunctionappavailablelocation)  

Functions のプランについては :link: [Azure Functions のスケールとホスティング | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/azure-functions/functions-scale) を参照してください。  

Case1. 従量課金プラン（サーバーレスプラン）で OS に Windows が利用できるリージョンを一覧表示する場合。  

```powershell
Get-AzFunctionAppAvailableLocation `
  -PlanType "Consumption" `
  -OSType "Windows"
```

Case2. Premium プランで OS に Linux が利用できるリージョンを一覧表示する場合。  

```powershell
Get-AzFunctionAppAvailableLocation `
  -PlanType "Premium" `
  -OSType "Linux"
```

### New-AzFunctionAppPlan

function app の新規作成。  
（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）  

:link: [New-AzFunctionAppPlan (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/new-azfunctionappplan)  

```powershell
New-AzFunctionApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Location "<Location>" # japanwest, japaneast `
  -StorageAccountName "<StorageAccountName>" ` # 作成済みのストレージアカウント名。
  -FunctionsVersion "<FunctionsVersion>" ` # 3（引数を省略した初期値）, 2
  -Runtime <Runtime> ` # ランタイム dotnet（引数を省略した初期値）, java, node, powershell, python 
  -RuntimeVersion "<RuntimeVersion>" # -Runtime で指定したバージョン dotnet -> [3.1], node -> [8, 10, 12] ...
  -DisableApplicationInsights # Application Insights を無効にするかのスイッチ（当記事コミット時点では機能していません、https://github.com/Azure/azure-powershell/issues/12728）
```

### Get-AzFunctionApp

:link: [Get-AzFunctionApp (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/get-azfunctionapp)  
（スロットが 1 つの構成では常に運用スロットになります。）  

```powershell
Get-AzFunctionApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

``-IncludeSlot`` スイッチは当記事コミット時点では機能していません（https://github.com/Azure/azure-powershell/issues/12284）。  


### Start-AzFunctionApp

function app を開始します。  
（スロットが 1 つの構成では常に運用スロットになります。）  

:link: [Start-AzFunctionApp (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/start-azfunctionapp)  

```powershell
Start-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Stop-AzFunctionApp

function app を停止します。  
（スロットが 1 つの構成では常に運用スロットになります。）  

:link: [Stop-AzFunctionApp (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/stop-azfunctionapp)  

```powershell
Stop-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Restart-AzFunctionApp

function app を再起動します。  
（スロットが 1 つの構成では常に運用スロットになります。）  

:link: [Restart-AzFunctionApp (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/restart-azfunctionapp)  

```powershell
Restart-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### Remove-AzFunctionApp

function app のリソースを削除します。  

:link: [Remove-AzFunctionApp (Az.Functions) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.functions/remove-azfunctionapp)  

```powershell
Remove-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```


