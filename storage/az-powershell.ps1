# Get-AzStorageAccount
# Case.1 ストレージアカウントの一覧表示。
Get-AzStorageAccount

# Get-AzStorageAccount
# Case.2 対象のリソースグループのストレージアカウントの一覧表示。
Get-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>"

# Get-AzStorageAccount
# Case.3 対象のストレージアカウントの詳細表示。
Get-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"

# ストレージアカウントの作成。  
New-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>" `
  -Kind "<Kind>" ` # StorageV2, BlobStorage, BlockBlobStorage, FileStorage, Storage
  -SkuName "<SkuName>" ` # Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS, Premium_ZRS, Standard_GZRS, Standard_RAGZRS
  -Location "<Location>" # japanwest, japaneast

# ストレージアカウントの削除。
Remove-AzStorageAccount `
  -ResourceGroupName "<ResourceGroupName>" `
  -Name "<Name>"
