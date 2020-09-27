# Azure CLI - Azure PowerShell

Azure CLI(AZ), Azure PowerShell AZ.  

:link: [Azure CLI の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/)  
:link: [Azure PowerShell の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure)  
:link: ``*1 非推奨`` [Azure PowerShell の概要 - AzureRM | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/azurerm/overview)  


``*1 非推奨`` [新しい Azure PowerShell Az モジュールの概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/new-azureps-module-az?view=azps-4.6.1)  
``*`` :link: マークは公式ドキュメントへのリンク、 マークが無いものは当リポジトリ内のリンクです。  

## Types

個人的によく使う一覧。   
また、AzureRM（Azure PowerShell RM）から Azure CLI 及び、Azure PowerShell AZ に移行する参考にしてください。  

| Type                | Azure CLI                                   | Azure PowerShell(Az module)                           | AzureRM (``*1 非推奨``)
| --------------------| ------------------------------------------- | ----------------------------------------------------- | -----------------------------------
| Sign in             | [az login](login/az.md)                     | [Connect-AzAccount](login/az-powershell.md)           | Login-AzureRmAccount
| Manage Subscription | [az account](account/az.md)                 | [AzSubscription, AzContext](account/az-powershell.md) | AzureRmSubscription, AzureRmContext
| Resource Group      | [az group](group/az.md)                     | [AzResourceGroup](group/az-powershell.md)             | AzureRmResourceGroup
| Storage             | [az storage account](storage/az.md)         | [AzStorageAccount](storage/az-powershell.md)          | AzureRmStorageAccount 
| App Service Plan    | [az appservice plan](appservice-plan/az.md) | [AzAppServicePlan](appservice-plan/az-powershell.md)  | AzureRmAppServicePlan
| Web App             | [az appservice](webapp/az.md)               | [AzWebApp, AzWebAppSlot](webapp/az-powershell.md)     | AzureRmWebApp, AzureRmWebAppSlot

---

## Content Matrix

``引数は省略しています。``  

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| サインイン                | [az login](login/az.md#az-login)                 | [Connect-AzAccount](login/az-powershell.md#Connect-AzAccount)     | Login-AzureRmAccount
| サブスクリプション一覧表示 | [az account list](account/az.md#az-account-list) | [Get-AzSubscription](account/az-powershell.md#Get-AzSubscription) | Get-AzureRmSubscription
| サブスクリプション設定     | [az account set](account/az.md#az-account-set)   | [Set-AzContext](account/az-powershell.md#Set-AzContext)           | Set-AzureRmContext
| リージョン一覧表示         | [az account list-locations](account/az.md#az-account-list-locations) | | 
| リソースグループ一覧表示   | [az group list](group/az.md#az-group-list)       | [Get-AzResourceGroup](group/az-powershell.md#Get-AzResourceGroup) | Get-AzureRmResourceGroup
| リソースグループ作成       | [az group create](group/az.md#az-group-create)   | [New-AzResourceGroup](group/az-powershell.md#New-AzResourceGroup) | New-AzureRmResourceGroup
| リソースグループ削除       | [az group delete](group/az.md#az-group-delete)   | [Remove-AzResourceGroup](group/az-powershell.md#Remove-AzResourceGroup) | Remove-AzureRmResource
| ストレージアカウント一覧表示 | [az storage account list](storage/az.md#az-storage-account-list) | [Get-AzStorageAccount](storage/az-powershell.md#Get-AzStorageAccount) | Get-AzureRmStorageAccount
| ストレージアカウント詳細表示 | [az storage account show](storage/az.md#az-storage-account-show) | [Get-AzStorageAccount](storage/az-powershell.md#Get-AzStorageAccount) | Get-AzureRmStorageAccount
| ストレージアカウント作成 | [az storage account create](storage/az.md#az-storage-account-create) | [New-AzStorageAccount](storage/az-powershell.md#New-AzStorageAccount) | New-AzureRmStorageAccount
| ストレージアカウント削除 | [az storage account delete](storage/az.md#az-storage-account-delete) | [Remove-AzStorageAccount](storage/az-powershell.md#Remove-AzStorageAccount) | Remove-AzureRmStorageAccount
| App Service プラン詳細表示 | [az appservice plan show](appservice-plan/az.md#az-appservice-plan-show) | [Get-AzAppServicePlan](appservice-plan/az-powershell.md#Get-AzAppServicePlan) | Get-AzureRmAppServicePlan
| App Service プラン作成 | [az appservice plan create](appservice-plan/az.md#az-appservice-plan-create) | [New-AzAppServicePlan](appservice-plan/az-powershell.md#New-AzAppServicePlan) | New-AzureRmAppServicePlan
| App Service プラン更新 | [az appservice plan update](appservice-plan/az.md#az-appservice-plan-update) | [Set-AzAppServicePlan](appservice-plan/az-powershell.md#Set-AzAppServicePlan) | Set-AzureRmAppServicePlan
| App Service プラン削除 | [az appservice plan delete](appservice-plan/az.md#az-appservice-plan-delete) | [Remove-AzAppServicePlan](appservice-plan/az-powershell.md#Remove-AzAppServicePlan) | Remove-AzureRmAppServicePlan
| Web App 詳細表示 | [az webapp show](webapp/az.md#az-webapp-show) | [Get-AzWebApp](webapp/az-powershell.md#Get-AzWebAp) | Get-AzureRmWebApp
| Web App 作成 | [az webapp create](webapp/az.md#az-webapp-create) | [New-AzWebApp](webapp/az-powershell.md#Get-AzWebAp#New-AzWebApp) | New-AzureRmWebApp
| Web App 開始 | [az webapp start](webapp/az.md#az-webapp-start) | [Start-AzWebApp](webapp/az-powershell.md#Start-AzWebApp) | Start-AzureRmWebApp
| Web App 停止 | [az webapp stop](webapp/az.md#az-webapp-stop) | [Stop-AzWebApp](webapp/az-powershell.md#Stop-AzWebApp) | Stop-AzureRmWebApp
| Web App 再起動 | [az webapp restart](webapp/az.md#az-webapp-restart) | [Restart-AzWebApp](webapp/az-powershell.md#Restart-AzWebApp) | Restart-AzureRmWebApp
| Web App スロット一覧表示 | [az webapp deployment slot list](webapp/az.md#az-webapp-deployment-slot-list) | [Get-AzWebAppSlot](webapp/az-powershell.md#Get-AzWebAppSlot) | Get-AzureRmWebAppSlot
| Web App スロット作成 | [az webapp deployment slot create](webapp/az.md#az-webapp-deployment-slot-create) | [New-AzWebAppSlot](webapp/az-powershell.md#New-AzWebAppSlot) | New-AzureRmWebAppSlot
| Web App スロットスワップ | [az webapp deployment slot swap](webapp/az.md#az-webapp-deployment-slot-swap) | [Switch-AzWebAppSlot](webapp/az-powershell.md#Switch-AzWebAppSlot) | Switch-AzureRmWebAppSlot
| Web App スロット開始 | [az webapp start --slot](webapp/az.md#az-webapp-start) | [Start-AzWebAppSlot](webapp/az-powershell.md#Start-AzWebAppSlot) | Start-AzureRmWebAppSlot
| Web App スロット停止 | [az webapp stop --slot](webapp/az.md#az-webapp-stop) | [Stop-AzWebAppSlot](webapp/az-powershell.md#Stop-AzWebAppSlot) | Stop-AzureRmWebAppSlot
| Web App スロット再起動 | [az webapp restart --slot](webapp/az.md#az-webapp-restart) | [Restart-AzWebAppSlot](webapp/az-powershell.md#Restart-AzWebAppSlot) | Restart-AzureRmWebAppSlot
| Web App アプリケーション設定一覧表示 | [az webapp config appsettings list](webapp/az.md#az-webapp-config-appsettings-list) | Get-AzWebApp | Get-AzureRmWebApp
| Web App アプリケーション設定 | [az webapp config appsettings set](webapp/az.md#az-webapp-config-appsettings-set) | [Set-AzWebApp](webapp/az-powershell.md#Set-AzWebApp) |
| Web App アプリケーション設定削除 | [az webapp config appsettings delete](webapp/az.md#az-webapp-config-appsettings-delete) | Set-AzWebApp | Set-AzureRmWebApp
| Web App 接続文字列一覧表示 | [az webapp config connection-string list](webapp/az.md#az-webapp-config-connection-string-list) | Get-AzWebApp | Get-AzureRmWebApp
| Web App 接続文字列設定 | [az webapp config connection-string set](webapp/az.md#az-webapp-config-connection-string-set) | Set-AzWebApp | Set-AzureRmWebApp
| Web App 接続文字列設定削除 | [az webapp config connection-string delete](webapp/az.md#az-webapp-config-connection-string-delete) | Set-AzWebApp | Set-AzureRmWebApp


















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  