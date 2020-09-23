# Stroage

## Azure CLI

:link: [az storage | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage)  

### az storage account list

ストレージアカウントの一覧表示。  

:link: [az storage account #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account#az_storage_account_list)  

```bash
az storage account list
```

### az storage account show

対象のストレージアカウントの詳細表示。  

:link: [az storage account #show | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account#az_storage_account_show)  

```bash
az storage account show \
  --resource-group <resource-group> \
  --name <name> 
```

### az storage account create

ストレージアカウントの作成。  

:link: [az storage account #create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account#az_storage_account_create)  

```bash
az storage account create \
  --resource-group <resource-group> \
  --name <name> \
  --kind <kind> \  # StorageV2, BlobStorage, BlockBlobStorage, FileStorage, Storage
  --location <location> # japanwest, japaneast
```

### az storage account delete

ストレージアカウントの削除。  

:link: [az storage account #delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account#az_storage_account_delete)  

```bash
az storage account delete \
  --resource-group <resource-group> \
  --name <name> 
```
