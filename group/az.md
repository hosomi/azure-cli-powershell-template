# Resource Group

## Azure CLI

:link: [リソース グループを管理する - Azure CLI - Azure Resource Manager | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/manage-resource-groups-cli)  
:link: [az group | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/group)  


### az group list

リソースグループの一覧表示。  

:link: [az group #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/group#az_group_list)  

```bash
az group list
```

### az group create

リソースグループの作成。  

:link: [az group #create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/group#az_group_create)  

```bash
az group create \
  --name <name> \
  --location <location>
```

### az group delete

リソースグループの削除。  

:link: [az group #delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/group#az_group_delete)  

```bash
az group delete \
  --name <name>
```

