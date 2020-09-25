# Web App の新規作成。  
#（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）  
az webapp create \
  --resource-group <resource-group> \
  --name <name> \
  --plan <plan>

# Web App の詳細表示。  
az webapp show \
  --resource-group <resource-group> \
  --name <name>

# Web App を開始します。  
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  
az webapp start \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# Web App を停止します。  
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  
az webapp stop \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# Web App を再起動します。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に production スロットになります。）  
az webapp restart  \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# ------

# Web App のデプロイメントスロットを作成します。  
az webapp deployment slot create \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging

# Web App のデプロイメントスロットをスワップします。  
az webapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging
  --target-slot <target-slot> # production
