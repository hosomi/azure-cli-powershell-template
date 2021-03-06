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
| Functions           | [az functionapp](functions/az.md)           | [AzFunctionApp](functions/az-powershell.md)           | - 
| Cloud Services      | -                                           | -                                                     | [AzureDeployment](cloud-service/az-powershell-rm.md)


---

## Content Matrix

``引数は省略しています。``  


### アカウント

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| サインイン                | [az login](login/az.md#az-login)                 | [Connect-AzAccount](login/az-powershell.md#Connect-AzAccount)     | Login-AzureRmAccount
| サブスクリプション一覧表示 | [az account list](account/az.md#az-account-list) | [Get-AzSubscription](account/az-powershell.md#Get-AzSubscription) | Get-AzureRmSubscription
| サブスクリプション設定     | [az account set](account/az.md#az-account-set)   | [Set-AzContext](account/az-powershell.md#Set-AzContext)           | Set-AzureRmContext
| リージョン一覧表示         | [az account list-locations](account/az.md#az-account-list-locations) | | 


### リソースグループ

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| 一覧表示   | [az group list](group/az.md#az-group-list)       | [Get-AzResourceGroup](group/az-powershell.md#Get-AzResourceGroup) | Get-AzureRmResourceGroup
| 作成       | [az group create](group/az.md#az-group-create)   | [New-AzResourceGroup](group/az-powershell.md#New-AzResourceGroup) | New-AzureRmResourceGroup
| 削除       | [az group delete](group/az.md#az-group-delete)   | [Remove-AzResourceGroup](group/az-powershell.md#Remove-AzResourceGroup) | Remove-AzureRmResource

### ストレージアカウント

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| 一覧表示 | [az storage account list](storage/az.md#az-storage-account-list) | [Get-AzStorageAccount](storage/az-powershell.md#Get-AzStorageAccount) | Get-AzureRmStorageAccount
| 詳細表示 | [az storage account show](storage/az.md#az-storage-account-show) | [Get-AzStorageAccount](storage/az-powershell.md#Get-AzStorageAccount) | Get-AzureRmStorageAccount
| 作成 | [az storage account create](storage/az.md#az-storage-account-create) | [New-AzStorageAccount](storage/az-powershell.md#New-AzStorageAccount) | New-AzureRmStorageAccount
| 削除 | [az storage account delete](storage/az.md#az-storage-account-delete) | [Remove-AzStorageAccount](storage/az-powershell.md#Remove-AzStorageAccount) | Remove-AzureRmStorageAccount


### App Service プラン

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| 詳細表示 | [az appservice plan show](appservice-plan/az.md#az-appservice-plan-show) | [Get-AzAppServicePlan](appservice-plan/az-powershell.md#Get-AzAppServicePlan) | Get-AzureRmAppServicePlan
| 作成 | [az appservice plan create](appservice-plan/az.md#az-appservice-plan-create) | [New-AzAppServicePlan](appservice-plan/az-powershell.md#New-AzAppServicePlan) | New-AzureRmAppServicePlan
| 更新 | [az appservice plan update](appservice-plan/az.md#az-appservice-plan-update) | [Set-AzAppServicePlan](appservice-plan/az-powershell.md#Set-AzAppServicePlan) | Set-AzureRmAppServicePlan
| 削除 | [az appservice plan delete](appservice-plan/az.md#az-appservice-plan-delete) | [Remove-AzAppServicePlan](appservice-plan/az-powershell.md#Remove-AzAppServicePlan) | Remove-AzureRmAppServicePlan

### Web App

| Content                   | Azure CLI                                       | Azure PowerShell(Az module)                                       | AzureRM (``*1 非推奨``)
| --------------------------| ----------------------------------------------- | ----------------------------------------------------------------- | -----------------------------------
| 詳細表示 | [az webapp show](webapp/az.md#az-webapp-show) | [Get-AzWebApp](webapp/az-powershell.md#Get-AzWebApp) | Get-AzureRmWebApp
| 作成 | [az webapp create](webapp/az.md#az-webapp-create) | [New-AzWebApp](webapp/az-powershell.md#Get-AzWebAp#New-AzWebApp) | New-AzureRmWebApp
| 開始 | [az webapp start](webapp/az.md#az-webapp-start) | [Start-AzWebApp](webapp/az-powershell.md#Start-AzWebApp) | Start-AzureRmWebApp
| 停止 | [az webapp stop](webapp/az.md#az-webapp-stop) | [Stop-AzWebApp](webapp/az-powershell.md#Stop-AzWebApp) | Stop-AzureRmWebApp
| 再起動 | [az webapp restart](webapp/az.md#az-webapp-restart) | [Restart-AzWebApp](webapp/az-powershell.md#Restart-AzWebApp) | Restart-AzureRmWebApp
| スロット一覧表示 | [az webapp deployment slot list](webapp/az.md#az-webapp-deployment-slot-list) | [Get-AzWebAppSlot](webapp/az-powershell.md#Get-AzWebAppSlot) | Get-AzureRmWebAppSlot
| スロット作成 | [az webapp deployment slot create](webapp/az.md#az-webapp-deployment-slot-create) | [New-AzWebAppSlot](webapp/az-powershell.md#New-AzWebAppSlot) | New-AzureRmWebAppSlot
| スロットスワップ | [az webapp deployment slot swap](webapp/az.md#az-webapp-deployment-slot-swap) | [Switch-AzWebAppSlot](webapp/az-powershell.md#Switch-AzWebAppSlot) | Switch-AzureRmWebAppSlot
| スロット開始 | [az webapp start --slot](webapp/az.md#az-webapp-start) | [Start-AzWebAppSlot](webapp/az-powershell.md#Start-AzWebAppSlot) | Start-AzureRmWebAppSlot
| スロット停止 | [az webapp stop --slot](webapp/az.md#az-webapp-stop) | [Stop-AzWebAppSlot](webapp/az-powershell.md#Stop-AzWebAppSlot) | Stop-AzureRmWebAppSlot
| スロット再起動 | [az webapp restart --slot](webapp/az.md#az-webapp-restart) | [Restart-AzWebAppSlot](webapp/az-powershell.md#Restart-AzWebAppSlot) | Restart-AzureRmWebAppSlot
| アプリケーション設定一覧表示 | [az webapp config appsettings list](webapp/az.md#az-webapp-config-appsettings-list) | [Get-AzWebApp](webapp/az-powershell.md#Get-AzWebApp) | Get-AzureRmWebApp
| アプリケーション設定 | [az webapp config appsettings set](webapp/az.md#az-webapp-config-appsettings-set) | [Set-AzWebApp](webapp/az-powershell.md#Set-AzWebApp) | Set-AzureRmWebApp
| アプリケーション設定削除 | [az webapp config appsettings delete](webapp/az.md#az-webapp-config-appsettings-delete) | [Set-AzWebApp](webapp/az-powershell.md#Set-AzWebApp) | Set-AzureRmWebApp
| 接続文字列一覧表示 | [az webapp config connection-string list](webapp/az.md#az-webapp-config-connection-string-list) | [Get-AzWebApp](webapp/az-powershell.md#Get-AzWebApp) | Get-AzureRmWebApp
| 接続文字列設定 | [az webapp config connection-string set](webapp/az.md#az-webapp-config-connection-string-set) | [Set-AzWebApp](webapp/az-powershell.md#Set-AzWebApp) | Set-AzureRmWebApp
| 接続文字列設定削除 | [az webapp config connection-string delete](webapp/az.md#az-webapp-config-connection-string-delete) | [Set-AzWebApp](webapp/az-powershell.md#Set-AzWebApp) | Set-AzureRmWebApp


### Functions

AzureRM (``*1 非推奨``) から操作はできません。  
接続文字列は webapp と同じモジュールで操作を行います。  

| Content                   | Azure CLI | Azure PowerShell(Az module)                                       
| --------------------------| --------- | -----------------------------
| 詳細表示 | [az functionapp show](functions/az.md#az-functionapp-show) | [Get-AzFunctionApp](functions/az-powershell.md#Get-AzFunctionApp)  
| 作成 | [az functionapp create](functions/az.md#az-functionapp-create) | [New-AzFunctionApp](functions/az-powershell.md#New-AzFunctionApp)  
| 開始 | [az functionapp start](functions/az.md#az-functionapp-start) | [Start-AzFunctionApp](functions/az-powershell.md#Start-AzFunctionApp)
| 停止 | [az functionapp stop](functions/az.md#az-functionapp-stop) | [Stop-AzFunctionApp](functions/az-powershell.md#Stop-AzFunctionApp)
| 再起動 | [az functionapp restart](functions/az.md#az-functionapp-restart) | [Restart-AzFunctionApp](functions/az-powershell.md#Restart-AzFunctionApp)
| スロット一覧表示 | [az functionapp deployment slot list](functions/az.md#az-functionapp-deployment-slot-list) | 
| スロット作成 | [az functionapp deployment slot create](functions/az.md#az-functionapp-deployment-slot-create) | 
| スロットスワップ | [az functionapp deployment slot swap](functions/az.md#az-functionapp-deployment-slot-swap) | 
| アプリケーション設定一覧表示 | [az functionapp config appsettings list](functions/az.md#az-functionapp-config-appsettings-list) | 
| アプリケーション設定 | [az functionapp config appsettings set](functions/az.md#az-functionapp-config-appsettings-set) | 
| アプリケーション設定削除 | [az functionapp config appsettings delete](functions/az.md#az-functionapp-config-appsettings-delete) | 
















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  