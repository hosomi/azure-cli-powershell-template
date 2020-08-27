# Credentials within

自動化で必要な証明書、資格情報を保存して認証を保存した証明書、資格情報から行います。  

## Azure CLI

:link: [Azure CLI で Azure サービス プリンシパルを使用する | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/create-an-azure-service-principal-azure-cli)  


サービスプリンシパルの作成

``az ad sp create-for-rbac`` : 

``--name `` 作成するサービスプリンシパル名
``--create-cert`` パスワード(pem) ファイルの作成、スイッチのみ

```bash
$ az ad sp create-for-rbac --name ServicePrincipalName --create-cert
Creating a role assignment under the scope of "/subscriptions/myId"
Please copy C:\myPath\myNewFile.pem to a safe place.
When you run 'az login', provide the file path in the --password argument
{
  "appId": "myAppId",
  "displayName": "myDisplayName",
  "fileWithCertAndPrivateKey": "C:\\myPath\\myNewFile.pem",
  "name": "http://myName",
  "password": null,
  "tenant": "myTenantId"
}
```


:link: [Azure CLI を使用してサインインする | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/authenticate-azure-cli#sign-in-with-a-service-principal)  

```bash
az login --service-principal --username APP_ID --tenant TENANT_ID --password C:\\myPath\\myNewFile.pem
```

``--password`` に作成したサービスプリンシパルのパスワードファイルをフルパスを指定する。





## Azure PowerShell

:link: [Save-AzContext (Az.Accounts) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.accounts/save-azcontext)  
:link: [Import-AzContext (Az.Accounts) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.accounts/import-azcontext)  

``Save-AzContext`` : （``Connect-AzAccount`` と組合せてつかってください。）  

``-Path`` : 出力先のパスを含むファイル名(出力ファイルは json)。  



```powershell
PS > Save-AzContext -Profile (Connect-AzAccount) -Path "C:\temp\test.json"
```

``Import-AzContext`` :  
``-Path`` : Save-AzContext で出力した json ファイルまでのフルパス。  

```powershell
PS > Import-AzContext -Path "C:\temp\test.json"

Account                    SubscriptionName TenantId                             Environment
-------                    ---------------- --------                             -----------
**************************                  ********-****-****-****-************ AzureCloud
```

アカウントの情報が出力されます。  






　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  