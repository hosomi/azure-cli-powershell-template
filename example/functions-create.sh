#!/bin/sh

# ----------------------------------------------------------
# Functions 新規作成。
# リソースグループ、ストレージアカウントが無ければ作成しません。
# ----------------------------------------------------------

# ==========================================================
# 環境に合わせてリソース名を変更してください。

# 作成リージョン。
Location="JapanEast" 

# リソースグループ、既存、または新規の名前。
ResourceGroupName="rg-test2"

# ストレージアカウント、既存、または新規の名前。
StorageAccountName="hosomistroage"

# 作成する Functions の名前。
FunctionsName="hosomi-test"

# ==========================================================

echo "--------------------------------------------"
echo "Location=$Location"
echo "ResourceGroupName=$ResourceGroupName"
echo "StorageAccountName=$StorageAccountName"
echo "FunctionsName=$FunctionsName"
echo "--------------------------------------------"

ExistsResourceGroup=$(
  az group exists \
    --name $ResourceGroupName
)

if [ $ExistsResourceGroup = "false" ] ; then
  echo "リソースグループが存在しません。"
  exit 1
fi

az storage account show \
  --resource-group $ResourceGroupName \
  --name $StorageAccountName

if [ $? -ne 0 ] ; then
  echo "ストレージが同じリソースグループに存在しません。"
  exit 1
fi

az functionapp show \
  --resource-group $ResourceGroupName \
  --name $FunctionsName

if [ $? -eq 0 ] ; then
  echo "既に作成されています。"
  exit 1;
fi

az functionapp create \
  --resource-group $ResourceGroupName \
  --name $FunctionsName \
  --storage-account $StorageAccountName \
  --disable-app-insights true \
  --functions-version 3 \
  --runtime dotnet \
  --runtime-version 3.1 \
  --consumption-plan-location $Location

echo "--------------------------------------------"
echo "Location=$Location"
echo "ResourceGroupName=$ResourceGroupName"
echo "StorageAccountName=$StorageAccountName"
echo "FunctionsName=$FunctionsName"
echo "--------------------------------------------"

if [ $? -eq 0 ] ; then
  echo "作成しました。"
  exit 0;
fi

