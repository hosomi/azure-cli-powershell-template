# 現在のアカウントがアクセスできるサブスクリプションを取得。
Get-AzSubscription

# サブスクリプションを現在アクティブなサブスクリプションに設定。
# (サブスクリプション以外もオプションによって設定可能。)
Set-AzContext `
  -SubscriptionId "<SubscriptionId>"