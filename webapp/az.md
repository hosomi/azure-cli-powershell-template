# Web App

:link: [Web App Service | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/app-service/web/)  

## Azure CLI

:link: [az webapp | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp)  

### az webapp create

Web App の新規作成。  
（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）  
（先に [App Service Plan](../appservice-plan/az.md) を作成してください、作成した App Service Plan 名を `--plan` 引数に付与してください。）  

:link: [az webapp #create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_create)

```bash
az webapp create \
  --resource-group <resource-group> \
  --name <name> \
  --plan <plan>
```

### az webapp show

Web App の詳細表示。  

:link: [az webapp #show | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_show)

```bash
az webapp show \
  --resource-group <resource-group> \
  --name <name>
```

### az webapp start

Web App を開始します。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  

:link: [az webapp #start | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_start)   

```bash
az webapp start \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

### az webapp stop

Web App を停止します。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  

:link: [az webapp #stop | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_stop)   

```bash
az webapp stop \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

### az webapp restart

Web App を再起動します。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  

:link: [az webapp #restart | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_restart)   

```bash
az webapp restart  \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

---

### az webapp deployment slot

Web App デプロイスロットの管理。  

:link: [az webapp deployment slot | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/deployment/slot)  

#### az webapp deployment slot list

Web App デプロイスロットの一覧表示。  

[az webapp deployment slot #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/deployment/slot#az_webapp_deployment_slot_list)  

```bash
az webapp deployment slot list \
  --resource-group <resource-group> \
  --name <name>
```

#### az webapp deployment slot create

Web App のデプロイメントスロットを作成します。  

:link: [az webapp deployment slot #swap | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/deployment/slot#az-webapp-deployment-slot-create)  

```bash
az webapp deployment slot create \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging
```

#### az webapp deployment slot swap

Web App のデプロイメントスロットをスワップします。  

:link: [az webapp deployment slot #swap | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/deployment/slot#az-webapp-deployment-slot-swap)  

```bash
az webapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging
  --target-slot <target-slot> # production
```

---

### az webapp config

Web App の構成設定の管理。  
アプリケーション設定（appsettings）の項目を記載。  

:link: [az webapp config appsettings | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/appsettings)  

複数のデプロイスロット構成で ``--slot`` 引数の指定が無い場合、 ``production`` 本番スロットになります。  

#### az webapp config appsettings set

アプリケーション設定（appsettings）の追加及び更新。  

:link: [az webapp config appsettings #set | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/appsettings#az_webapp_config_appsettings_set)  

```bash
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。
```

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。
```

デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。  

```bash
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --slot-settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。
```

#### az webapp config appsettings list

アプリケーション設定（appsettings）の一覧表示。  

:link: [az webapp config appsettings #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/appsettings#az_webapp_config_appsettings_list)  

```bash
az webapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> 
```

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

#### az webapp config appsettings delete

アプリケーション設定（appsettings）の削除。  

:link: [az webapp config appsettings #delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/appsettings#az_webapp_config_appsettings_delete)  

```bash
az webapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
``` 

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
``` 

### az webapp config connection-string

Web App の構成設定の管理。  
接続文字列（connection-string）の項目を記載。  

:link: [az webapp config connection-string | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/connection-string)  

複数のデプロイスロット構成で ``--slot`` 引数の指定が無い場合、 ``production`` 本番スロットになります。  

#### az webapp config connection-string set

接続文字列（connection-string）の追加及び更新。  

:link: [az webapp config connection-string #set | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/connection-string#az_webapp_config_connection_string_set)  

```bash
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --settings # "DatabaseConnectionString='Server=tcp:...;'"
```

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --settings # "DatabaseConnectionString='Server=tcp:...;'"
```

デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。  

```bash
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --slot-settings # "DatabaseConnectionString='Server=tcp:...;'"
```

#### az webapp config connection-string list

接続文字列（connection-string）の一覧表示。  

:link: [az webapp config connection-string #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/connection-string#az_webapp_config_connection_string_list)  

```bash
az webapp config connection-string list \
  --resource-group <resource-group> \
  --name <name> 
```

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config connection-string list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

#### az webapp config connection-string delete

接続文字列（connection-string）の削除。  

:link: [az webapp config connection-string #delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp/config/connection-string#az_webapp_config_connection_string_delete)  

```bash
az webapp config connection-string delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
``` 

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az webapp config connection-string delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
```