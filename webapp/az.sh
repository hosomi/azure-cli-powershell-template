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


# ------

# az webapp config
# アプリケーション設定（appsettings）の追加及び更新。
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。

# デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。
az webapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --slot-settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。

# アプリケーション設定（appsettings）の一覧表示。
az webapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> 

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# アプリケーション設定（appsettings）の削除。
az webapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..

# 接続文字列（connection-string）の追加及び更新。
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --settings # "DatabaseConnectionString='Server=tcp:...;'"

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --settings # "DatabaseConnectionString='Server=tcp:...;'"

# デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。
az webapp config connection-string set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --connection-string-type <connection-string-type> \ # SQLServer, SQLAzure, MySql, PostgreSQL, RedisCache
  --slot-settings # "DatabaseConnectionString='Server=tcp:...;'"

# 接続文字列（connection-string）の一覧表示。
az webapp config connection-string list \
  --resource-group <resource-group> \
  --name <name> 

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config connection-string list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# 接続文字列（connection-string）の削除。
az webapp config connection-string delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az webapp config connection-string delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
