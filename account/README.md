# Account

Azure サブスクリプションを管理します。  
``多数のオプションがあります。``  

## Azure CLI

:link: [az account | Microsoft Docs](https://docs.microsoft.com/en-us/cli/azure/account?view=azure-cli-latest)

``az account list`` : ログインしているアカウントのサブスクリプションのリストを取得します。  

```bash
$ az account list --query "[?name=='Concierge Subscription'].tenantId" -o tsv
********-****-****-****-************
```

``--query`` : [JMESPath](https://jmespath.org/) クエリでサブスクリプション名に Concierge Subscription を条件に指定して結果を tenantId のみにする。  
``-out`` : 出力結果を tsv に。

## Azure PowerShell

:link: [Get-AzContext (Az.Accounts) | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/az.accounts/get-azcontext)

``Get-AzContext`` : 

```powershell
PS > (Get-AzContext).Tenant.Id
********-****-****-****-************
```





















　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  