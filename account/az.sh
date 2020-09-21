# ログインしているアカウントのサブスクリプションを一覧表示。
az account list -o table

# サブスクリプションを現在アクティブなサブスクリプションに設定。
az account set \
  --subscription "<subscription>"

# 現在のサブスクリプションで利用できるリージョンを一覧表示。
#（サービスによっては利用できないリージョンもあります。）
az account list-locations -o table

