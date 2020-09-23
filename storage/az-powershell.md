# Resource Group

## Azure PowerShell

### Get-AzStorageAccount

:link: [Get-AzStorageAccount (Az.Storage) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/Az.Storage/Get-AzStorageAccount)  

Case.1 ストレージアカウントの一覧表示。  

```powershell
Get-AzStorageAccount
```

Case.2 対象のリソースグループのストレージアカウントの一覧表示。  

```powershell
Get-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>"
```

Case.3 対象のストレージアカウントの詳細表示。  

```powershell
Get-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```

### New-AzStorageAccount

ストレージアカウントの作成。  

:link: [New-AzStorageAccount (Az.Storage) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.storage/new-azstorageaccount)  

```powershell
New-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Kind "<Kind>" ` # StorageV2, BlobStorage, BlockBlobStorage, FileStorage, Storage
  -SkuName "<SkuName>" ` # Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS, Premium_ZRS, Standard_GZRS, Standard_RAGZRS
  -Location "<Location>" # japanwest, japaneast
```

### Remove-AzStorageAccount

ストレージアカウントの削除。  

:link: [Remove-AzStorageAccount (Az.Storage) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/Az.Storage/Remove-AzStorageAccount)  

```powershell
Remove-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
```
