# function app の新規作成。
#（リソース名(`<name>`)は azurewebsites.net で一意でないと作成できません。FQDN: `<name>.azurewebsites.net`）
az functionapp create \
  --resource-group <resource-group> \
  --name <name> \
  --storage-account <storage-account> \ # 作成済みのストレージアカウント名。
  --disable-app-insights <boolean> \ # Application Insights を無効にするか（true: 無効（構成設定で後からでも変更可能）, false（引数を省略した初期値）: Application Insights のインスタンス有効にしてリソースも生成される。）
  --functions-version <functions-version> \ # 3, 2（引数を省略した初期値, 理由が無ければ 3 を推奨。）
  --runtime <runtime> \ # ランタイム dotnet（引数を省略した初期値）, java, node, powershell, python
  --runtime-version <runtime-version> \ # --runtime で指定したバージョン dotnet -> [3.1], node -> [8, 10, 12] ...
  --consumption-plan-location <consumption-plan-location> # Functions を作成するリージョン。

# function app の詳細表示。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）
az functionapp show \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。

# function app を開始します。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）
az functionapp start \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。

# function app を停止します。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）
az functionapp stop \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。

# function app を再起動します。
#（スロットが 1 つの構成では `--slot` 引数は不要です、常に運用スロットになります。）
az functionapp restart \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, 引数無しは運用スロット。

# ---

# function app デプロイスロットの一覧表示。
az functionapp deployment slot list \
  --resource-group <resource-group> \
  --name <name>

# function app のデプロイメントスロットを作成します。
az functionapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging

# function app のデプロイメントスロットを削除します。
az functionapp deployment slot delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging

# functionapp のデプロイメントスロットをスワップします。
az webapp deployment slot swap \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging
  --target-slot <target-slot> # production

---

# アプリケーション設定（appsettings）の追加及び更新。
az functionapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。

# デプロイスロット設定（スロット固定）が必要な場合、`--settings` から `--slot-settings` に変更してください。
az functionapp config appsettings set \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --slot-settings <settings> # 名前=値（WEBSITE_TIME_ZONE="Tokyo Standard Time"）スペースがある場合、”（ダブルクウォート）で囲ってください。

# アプリケーション設定（appsettings）の一覧表示。
az functionapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> 

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az functionapp config appsettings list \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> # staging, production

# アプリケーション設定（appsettings）の削除。
az functionapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..

# デプロイスロットの指定が必要な場合、`--slot` 引数を付与してください。
az functionapp config appsettings delete \
  --resource-group <resource-group> \
  --name <name> \
  --slot <slot> \ # staging, production
  --setting-names <setting-names> # WEBSITE_TIME_ZONE..
