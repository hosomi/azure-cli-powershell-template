# learn-azure-cli-powershell

Microsoft Learn でよく利用する Azure CLI(AZ), Azure PowerShell.  

:link: [Azure CLI の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/?view=azure-cli-latest)  
:link: [Overview of Azure PowerShell | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/azure/?view=azps-4.5.0)  




## 1. Azure login

Azure にサインインします。  
``Azure Cloud Shell を利用する場合、不要です。``  

:link: [Azure Cloud Shell の概要 | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/cloud-shell/overview)  


``az`` : 

```bash
az login
```
:link: [Azure CLI を使用してサインインする | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/authenticate-azure-cli?view=azure-cli-latest)



``powershell`` : 

```powershell
Connect-AzureRmAccount
```







