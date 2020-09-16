# Web Apps

:link: [Web App Service | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/app-service/web/)  

## Azure CLI

:link: [az webapp | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp)  

### az webapp start

:link: [az webapp # slot staging start | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_start)   

```bash
az webapp start \
  --resource-group MyResourceGroup \
  --name MyUniqueApp \
  --slot staging 
```

### az webapp stop

:link: [az webapp # slot staging stop | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_start)   

```bash
az webapp stop \
  --resource-group MyResourceGroup \
  --name MyUniqueApp \
  --slot staging 
```


### az webapp deployment slot swap

:link: [az webapp # deployment slot swap | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_stop)   

```bash
az webapp deployment slot swap \
  --resource-group MyResourceGroup \
  --name MyUniqueApp \
  --slot staging \
  --target-slot production
```

### az webapp restart

:link: [az webapp # deployment slot restart | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/webapp#az_webapp_restart)   

```bash
az webapp restart  \
  --resource-group MyResourceGroup \
  --name MyUniqueApp \
```

### az appservice plan update

:link: [az appservice plan | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/appservice/plan#az_appservice_plan_update)   


```bash
az appservice plan update \
  --resource-group MyResourceGroup \
  --name MyUniqueApp \
  --sku D1
```


　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  