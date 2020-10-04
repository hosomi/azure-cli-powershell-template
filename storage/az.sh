# ストレージアカウントの一覧表示。  
az storage account list

# 対象のストレージアカウントの詳細表示。  
az storage account show \
  --resource-group <resource-group> \
  --name <name> 

# ストレージアカウントの作成。  
az storage account create \
  --resource-group <resource-group> \
  --name <name> \
  --kind <kind> \  # StorageV2, BlobStorage, BlockBlobStorage, FileStorage, Storage
  --sku <sku> \ # Standard_LRS.. デフォルト：読み取りアクセス地理冗長ストレージ (RA-GRS) 
  --location <location> # japanwest, japaneast

# ストレージアカウントの削除。  
az storage account delete \
  --resource-group <resource-group> \
  --name <name> 
