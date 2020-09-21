# Manage Subscription

:link: [Azure CLI を使用して Azure サブスクリプションを管理する | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/manage-azure-subscriptions-azure-cli)  
:link: [az account | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/account)  

## Azure CLI

### az account list

ログインしているアカウントのサブスクリプションを一覧表示。  

:link: [az account #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/account#az_account_list)  

```bash
az account list -o table
```

### az account set

サブスクリプションを現在アクティブなサブスクリプションに設定。  

:link: [az account #set | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/account#az_account_set)  

```bash
az account set \
  --subscription "<subscription>"
```

### az account list-locations

現在のサブスクリプションで利用できるリージョンを一覧表示。  
（サービスによっては利用できないリージョンもあります。）  

:link: [az account #list-locations | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/account#az_account_list_locations)  

```bash
az account list-locations -o table
```

