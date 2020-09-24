# App Service Plan の作成。
#（Azure Functions のサーバーレスプランは事前に作成する必要はありません。）
az appservice plan create \
  --resource-group <resource-group> \
  --name <name> \
  --sku <sku> \ # FREE, B1, B2, SHARED..
  --location <location> # japanwest, japaneast

# App Service Plan の内容表示。
#（作成したプランの確認、sku 変更対象のプランの確認等。）
az appservice plan show \
  --resource-group <resource-group> \
  --name <name>

# App Service Plan の更新。
#（sku を変更する事によりスケールアップ、スケールダウンが可能です。）
az appservice plan update \
  --resource-group <resource-group> \
  --name <name> \
  --sku <sku> # FREE, B1, B2, SHARED..

# App Service Plan の削除。
az appservice plan delete \
  --resource-group <resource-group> \
  --name <name>
