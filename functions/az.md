# Functions

:link: [Azure Functions サーバーレス コンピューティング | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/functions/)  

## Azure CLI

:link: [az webapp | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp)  


### az functionapp create

function app の新規作成。  
（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）  

:link: [az functionapp #create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp#az_functionapp_create)  

```bash
az functionapp create \
  --resource-group <resource-group> \
  --name <name> \
  --storage-account <storage-account> \ # 作成済みのストレージアカウント名。
  --disable-app-insights <boolean> \ # Application Insights を無効にするか（true: 無効（構成設定で後からでも変更可能）, false（引数を省略した初期値）: Application Insights のインスタンス有効にしてリソースも生成される。）
  --functions-version <functions-version> \ # 3, 2（引数を省略した初期値, 理由が無ければ 3 を推奨。）
  --runtime <runtime> \ # ランタイム dotnet（引数を省略した初期値）, java, node, powershell, python
  --runtime-version <runtime-version> \ # --runtime で指定したバージョン dotnet -> [3.1], node -> [8, 10, 12] ...
  --consumption-plan-location <consumption-plan-location> # Functions を作成するリージョン。
```

``上記のオプションで --disable-app-insights true  の場合、作成されるリソースは Functions と App Service Plan （サーバーレスプラン）です。``  
``※--storage-account で指定するストレージアカウントのリソースは同じリソースグループ内でのみ指定できます、別リソースグループのストレージアカウントを指定したい場合は Azure Portal から行ってください。``  

### az functionapp show

function app の詳細表示。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）  

:link: [az functionapp #show | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp#az_functionapp_show)  

```bash
az functionapp show \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。
```

### az functionapp start

function app を開始します。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）  

:link: [az functionapp #start | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp#az_functionapp_start)  

```bash
az functionapp start \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。
```

### az functionapp stop

function app を停止します。  
（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）  

:link: [az functionapp #stop | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp#az_functionapp_stop)  

```bash
az functionapp stop \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。
```

### az functionapp restart

function app を再起動します。   
（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）  

:link: [az functionapp #restart | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp#az_functionapp_restart)  

```bash
az functionapp restart \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。
```

---

### az functionapp deployment slot

function app デプロイスロットの管理。  

:link: [az functionapp deployment slot | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/deployment/slot)  

#### az functionapp deployment slot list

function app デプロイスロットの一覧表示。  

[az functionapp deployment slot #list | Microsoft Docss](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/deployment/slot#az_functionapp_deployment_slot_list)  

```bash
az functionapp deployment slot list \
  --resource-group <resource-group> \
  --name <name>
```

``運用スロットは一覧に表示されません、追加で作成したスロットのみ表示されます。``  

#### az functionapp deployment slot create

function app のデプロイメントスロットを作成します。  

[az functionapp deployment slot #create | Microsoft Docss](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/deployment/slot#az_functionapp_deployment_slot_create)  

```bash
az functionapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging
```

#### az functionapp deployment slot delete

function app のデプロイメントスロットを削除します。  

[az functionapp deployment slot #delete | Microsoft Docss](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/deployment/slot#az_functionapp_deployment_slot_delete)  

```bash
az functionapp deployment slot delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging
```

#### az functionapp deployment slot swap

functionapp のデプロイメントスロットをスワップします。  

[az functionapp deployment slot #delete | Microsoft Docss](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/deployment/slot#az_functionapp_deployment_slot_swap)  

```bash
az webapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging
  --target-slot <target-slot> # production
```

---

### az functionapp config

functionapp の構成設定の管理。  
接続文字列の管理は [az webapp config connection-string](../webapp/az.md#az-webapp-config-connection-string) を使用してください。  

:link: [az functionapp config | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/config)  

複数のデプロイスロット構成で ``--slot`` 引数の指定が無い場合、 ``production`` 運用スロットになります。  

#### az functionapp config appsettings set

アプリケーション設定（appsettings）の追加及び更新。  

:link: [az functionapp config appsettings #set | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/config/appsettings#az_functionapp_config_appsettings_set)  

```bash
az functionapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。
```

デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。  

```bash
az functionapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --slot-settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。
```

#### az functionapp config appsettings list

アプリケーション設定（appsettings）の一覧表示。  

:link: [az functionapp config appsettings #list | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/config/appsettings#az_functionapp_config_appsettings_list)  

```bash
az functionapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> 
```

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az functionapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production
```

#### az functionapp config appsettings delete

アプリケーション設定（appsettings）の削除。  

:link: [az functionapp config appsettings #delete | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/functionapp/config/appsettings#az_functionapp_config_appsettings_delete)  

```bash
az functionapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
``` 

デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。  

```bash
az functionapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
``` 
