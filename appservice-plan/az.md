# App Service Plan

:link: [App Service プラン - Azure App Service | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/app-service/overview-hosting-plans)  
:link: [App Service プランの管理 - Azure App Service | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/app-service/app-service-plan-manage)  

## Azure CLI

:link: [az appservice plan | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan)  

### az appservice plan create

App Service Plan の作成。  
（Azure Functions のサーバーレスプランは事前に作成する必要はありません。）  

:link: [az appservice plan # create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan#az-appservice-plan-create)  

```bash
az appservice plan create \
  --resource-group <resource-group> \
  --name <name> \
  --sku <sku> \ # FREE, B1, B2, SHARED..
  --location <location> # japanwest, japaneast
```

### az appservice plan show

App Service Plan の内容表示。  
（作成したプランの確認、sku 変更対象のプランの確認等。）  

:link: [az appservice plan # show | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan#az_appservice_plan_show)  

```bash
az appservice plan show \
  --resource-group <resource-group> \
  --name <name>
```

### az appservice plan update

App Service Plan の更新。  
（sku を変更する事によりスケールアップ、スケールダウンが可能です。） 

:link: [az appservice plan # update | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan#az_appservice_plan_update)  

```bash
az appservice plan update \
  --resource-group <resource-group> \
  --name <name> \
  --sku <sku> # FREE, B1, B2, SHARED..
```

### az appservice plan delete

App Service Plan の削除。  

:link: [az appservice plan # delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan#az_appservice_plan_delete)  

```bash
az appservice plan delete \
  --resource-group <resource-group> \
  --name <name>
```

