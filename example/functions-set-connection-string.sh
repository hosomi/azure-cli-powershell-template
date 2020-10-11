#!/bin/sh

# -----------------------------------------------------------------
# Functions, Web App 共通の接続文字列設定の追加。
# （Azure SQLDatabase、SQL Server 専用。）
# ※--slot-settings デプロイスロット設定（スロット固定）で設定します。
# -----------------------------------------------------------------


# =================================================================
# 環境に合わせて変更してください。

# リソースグループ、既存、または新規の名前。
ResourceGroupName="rg-test2"

# connection-string を設定対象リソース名（Functions または App Service）。
Name="hosomitest"

# 接続文字列を取得する対象の Server 名。
DatabaseServer="hosomidbserver"

# 接続文字列を取得する対象のデーターベース。
DatabaseName="hosomidb"

# 設定名 KEY=VALUE の KEY 名。
KeyName="DatabaseConnectionString"

ConnectionString = $(
  az sql db show-connection-string \
    --server $DatabaseServer \
    --name $DatabaseName \
    --client ado.net \
    | jq -r
)

if [ $? -ne 0 ] ; then
  echo "データーベースから接続文字列が取得できませんでした。"
  exit 1
fi

az webapp config connection-string set \
  --resource-group $ResourceGroupName \
  --name $Name \
  --connection-string-type SQLServer \
  --slot-settings "$KeyName='$ConnectionString""'"

if [ $? -eq 0 ] ; then
  echo "対象のリソースに接続文字列を設定しました。"
  exit 0
fi
