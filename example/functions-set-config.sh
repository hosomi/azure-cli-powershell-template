#!/bin/sh

# -----------------------------------------------------------------
# Functions アプリケーション設定の追加。
# ※--slot-settings デプロイスロット設定（スロット固定）で設定します。
# -----------------------------------------------------------------



# =================================================================
# 環境に合わせて変更してください。

# appsettings を設定する Functions の名前。
FunctionsName="hosomitest"

# Functions のリソースグループ。
ResourceGroupName="rg-test2"

# アプリケーション設定の設定値。
declare -A appsettings;
appsettings=(
  ["WEBSITE_TIME_ZONE"]="Tokyo Standard Time" # タイムゾーン
  ["MSDEPLOY_RENAME_LOCKED_FILES"]="1"
  ["STORAGE_SETTINGS"]="DefaultEndpointsProtocol=..."
)

# =================================================================

# -----------------------------------------------------------------
# main
# -----------------------------------------------------------------
az functionapp show \
  --resource-group $ResourceGroupName \
  --name $FunctionsName

if [ $? -ne 0 ] ; then
  echo "設定する Functions は存在しません。"
  exit 1;
fi

for appsetting in ${!appsettings[@]};
do
  echo "$appsetting=${appsettings[$appsetting]}"
  echo "appsettings set..."

  az functionapp config appsettings set \
    --resource-group $ResourceGroupName \
    --name $FunctionsName \
    --slot-settings "$appsetting=${appsettings[$appsetting]}"
done
