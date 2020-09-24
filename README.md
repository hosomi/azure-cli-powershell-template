# Azure CLI - Azure PowerShell

Azure CLI(AZ), Azure PowerShell AZ.  

:link: [Azure CLI の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/)  
:link: [Azure PowerShell の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure)  
:link: ``*1 非推奨`` [Azure PowerShell の概要 - AzureRM | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/azurerm/overview)  


``*1 非推奨`` [新しい Azure PowerShell Az モジュールの概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/new-azureps-module-az?view=azps-4.6.1)  
`` :link: `` マークは公式ドキュメントへのリンク、 マークが無いものは当リポジトリ内のリンクです。  

## Types

個人的によく使う一覧。   
また、AzureRM（Azure PowerShell RM）から Azure CLI 及び、Azure PowerShell AZ に移行する参考にしてください。  


| Type                                      | Azure CLI                                   | Azure PowerShell(Az モジュール)                | AzureRM (``*1 非推奨``)
| ----------------------------------------- | ------------------------------------------- | ---------------------------------------------- | ----------------
| Sign in                                   | [az login](login/az.md)                     | [Connect-AzAccount](login/az-powershell.md)    | Login-AzureRmAccount
| Manage Subscription                       | [az account](account/az.md)                 | [Get-AzSubscription, Set-AzContext](account/az-powershell.md) | Get-AzureRmSubscription, Select-AzureRmSubscription, Get-AzureRmContext
| Resource Group                            | [az group](group/az.md)                     | [Get-AzResourceGroup, New-AzResourceGroup, Remove-AzResourceGroup](group/az-powershell.md) | New-AzureRmResourceGroup
| Storage                                   | [az storage account](storage/az.md)         | [Get-AzStorageAccount, New-AzStorageAccount, Remove-AzStorageAccount](storage/az-powershell.md) | Get-AzureRmStorageAccount 
| App Service Plan                          | [az appservice plan](appservice-plan/az.md) | [New-AzAppServicePlan, Get-AzAppServicePlan, Set-AzAppServicePlan, Remove-AzAppServicePlan](appservice-plan/az-powershell.md) | New-AzureRmAppServicePlan, Get-AzureRmAppServicePlan, Set-AzureRmAppServicePlan, Remove-AzureRmAppServicePlan



















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  