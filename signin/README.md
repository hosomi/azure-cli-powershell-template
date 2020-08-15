# Sign in

Azure にサインインします。  
``Azure Cloud Shell を利用する場合、不要です。``  

:link: [Azure Cloud Shell の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/cloud-shell/overview)  

## Azure CLI

:link: [Azure CLI を使用してサインインする | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/authenticate-azure-cli?view=azure-cli-latest)  

``az login`` : 

```bash
$ az login
You have logged in. Now let us find all the subscriptions to which you have access...
The following tenants don't contain accessible subscriptions. Use 'az login --allow-no-subscriptions' to have tenant level access.
********-****-****-****-************
********-****-****-****-************
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "********-****-****-****-************",
    "id": "********-****-****-****-************",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Concierge Subscription",
    "state": "Enabled",
    "tenantId": "********-****-****-****-************",
    "user": {
      "name": "*****************",
      "type": "user"
    }
  }
]
```

## Azure PowerShell

:link: [Sign in with Azure PowerShell | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/azurerm/authenticate-azureps)

``Connect-AzureRmAccount`` : 

```powershell
PS > Connect-AzureRmAccount

Account          : ****************************
SubscriptionName : Concierge Subscription
SubscriptionId   : ********-****-****-****-************
TenantId         : ********-****-****-****-************
Environment      : AzureCloud
```

















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  