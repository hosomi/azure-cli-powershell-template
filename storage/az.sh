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
  --location <location> # japanwest, japaneast

# ストレージアカウントの削除。  
az storage account delete \
  --resource-group <resource-group> \
  --name <name> 
