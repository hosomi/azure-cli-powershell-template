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
