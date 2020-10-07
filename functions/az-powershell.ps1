# Functions で利用できるプランをサポートするリージョンの一覧を表示します。  
# Case1. 従量課金プラン（サーバーレスプラン）で OS に Windows が利用できるリージョンを一覧表示する場合。
Get-AzFunctionAppAvailableLocation `
  -PlanType "Consumption" `
  -OSType "Windows"

# Case2. Premium プランで OS に Linux が利用できるリージョンを一覧表示する場合。
Get-AzFunctionAppAvailableLocation `
  -PlanType "Premium" `
  -OSType "Linux"

# function app の新規作成。
#（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）
New-AzFunctionApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Location "<Location>" # japanwest, japaneast `
  -StorageAccountName "<StorageAccountName>" ` # 作成済みのストレージアカウント名。
  -FunctionsVersion "<FunctionsVersion>" ` # 3（引数を省略した初期値）, 2
  -Runtime <Runtime> ` # ランタイム dotnet（引数を省略した初期値）, java, node, powershell, python 
  -RuntimeVersion "<RuntimeVersion>" # -Runtime で指定したバージョン dotnet -> [3.1], node -> [8, 10, 12] ...
  -DisableApplicationInsights # Application Insights を無効にするかのスイッチ（当記事コミット時点では機能していません、https://github.com/Azure/azure-powershell/issues/12728）

### Get-AzFunctionApp

# function app の詳細表示。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）
Get-AzFunctionApp `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# function app を開始します。
#（スロットが 1 つの構成では常に運用スロットになります。）
Start-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# function app を停止します。
#（スロットが 1 つの構成では常に運用スロットになります。）
Stop-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# function app を再起動します。
#（スロットが 1 つの構成では常に運用スロットになります。）
Restart-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# function app のリソースを削除します。
Remove-AzFunctionApp
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
