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





　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  