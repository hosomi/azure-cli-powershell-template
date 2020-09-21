# Manage Subscription

## Azure PowerShell

:link: [Az.Accounts Module | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/az.accounts)  

### Get-AzSubscription

現在のアカウントがアクセスできるサブスクリプションを取得。

:link: [Get-AzSubscription (Az.Accounts) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.accounts/get-azsubscription)  

```powershell
Get-AzSubscription
```

### Set-AzContext

サブスクリプションを現在アクティブなサブスクリプションに設定。  
(サブスクリプション以外もオプションによって設定可能。)  

:link: [Set-AzContext (Az.Accounts) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.accounts/set-azcontext)  

```powershell
Set-AzContext `
  -SubscriptionId "<SubscriptionId>"
```



