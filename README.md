# azure-cli-powershell-template

Azure CLI(AZ), Azure PowerShell.  

:link: [Azure CLI の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/)  
:link: [Overview of Azure PowerShell | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure)  
:link: [Azure Cloud Shell の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/cloud-shell/overview)  

## Types

| Type                                      | Azure CLI                       | Azure PowerShell  
| ----------------------------------------- | ------------------------------- | -----------------------  
| [Sign in](signin/)                        | ``az login``                    | ``Connect-AzAccount``
| [Account](account/)                       | ``az account``                  | ``Get-AzContext``
| [Credentials within](credentials-within/) | ``az ad sp create-for-rbac``    | ``Save-AzContext``
| [Storage](storage/)                       | ``az storage account``          | ``New-AzStorageAccount``
| [VM](vm/)                                 | ``az vm create``                | ``New-AzVM``
| "                                         | ``az vm show``                  | ``Get-AzVM``
| "                                         | ``az vm open-port``             | ``Set-AzNetworkSecurityGroup``
| [App Service Plan](appservice-plan/)      | ``az appservice plan create``   | ``New-AzAppServicePlan``

















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  