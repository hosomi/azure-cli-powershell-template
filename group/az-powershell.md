# Resource Group

## Azure PowerShell

:link: [リソース グループの管理 - Azure PowerShell - Azure Resource Manager | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/manage-resource-groups-powershell)  

### Get-AzResourceGroup

リソースグループの一覧表示。  

:link: [Get-AzResourceGroup (Az.Resources) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.resources/get-azresourcegroup)  

```powershell
Get-AzResourceGroup
```

### New-AzResourceGroup

リソースグループの作成。  

:link: [New-AzResourceGroup (Az.Resources) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.resources/new-azresourcegroup)  


```powershell
New-AzResourceGroup `
  -Name "<Name>" `
  -Location "<Location>"
```

### Remove-AzResourceGroup 

リソースグループの削除。 

:link: [Remove-AzResourceGroup (Az.Resources) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.resources/remove-azresourcegroup)  

```powershell
Remove-AzResourceGroup  `
  -Name "<Name>"
```

