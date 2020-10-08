# Cloud Services (クラシック)

:link: [Cloud Services - Web アプリおよび API のデプロイ | Microsoft Azure](https://azure.microsoft.com/ja-jp/services/cloud-services/)  

`Azure PowerShell RM のみサポートしています。`  
`Cloud Services (クラシック) は Azure CLI, Azure PowerShell Az モジュールはサポートしていません。`  

## deployment

Cloud Services (クラシック)にデプロイとデプロイの進捗を管理します。

* スクリプト：[publish.ps1](publish.ps1)  
* 呼び出し方：  

```powershell
publish.ps1 `
  -environment "Staging" ` # Staging、Production 指定が可能ですが、このままにして Staging を推奨。
  -serviceName "<serviceName>" ` # クラウドサービスのリソース名。
  -storageAccountName "<storageAccountName>" ` # デプロイ対象を一時的に保存するストレージアカウント。
  -packageLocation "<packageLocation>"  ` # cspkg ファイルまでのフルパス。
  -cloudConfigLocation "<cloudConfigLocation>" ` # cscfg ファイルまでのフルパス。
  -subscriptionDataFile "subscriptionDataFile" ` # 管理証明書ファイル（Get-AzurePublishSettingsFile）、publishsettings ファイルまでのフルパス。
  -selectedsubscription "<selectedsubscription>" ` # クラウドサービスのリソースが存在するサブスクリプション名。
  -deploymentId "$(Get-Date -Format 'yyyy/MM/dd HH:mm:ss')" # デプロイラベル、特にこだわりがなければこのままで（<serviceName>-<yyyy/MM/dd HH:mm:ss>）。
```


## swap

Staging（ステージングスロット）から Production（運用スロット）にスワップします。  
:grey_exclamation: `※事故を防ぐために Staging → Production への一方向です。`   

* スクリプト：[swap-to-production.ps1](swap-to-production.ps1)  
* 呼び出し方：

```powershell
swap-to-production.ps1 `
  -serviceName "<serviceName>" ` # クラウドサービスのリソース名。
  -subscriptionDataFile "subscriptionDataFile" # 管理証明書ファイル（Get-AzurePublishSettingsFile）、publishsettings ファイルまでのフルパス。
```

## delete-staging-slot

Staging（ステージングスロット）のデプロイを削除します。  
:grey_exclamation: `※事故を防ぐために Staging 固定です。`   

* スクリプト：[delete-staging-slot.ps1](delete-staging-slot.ps1)  
* 呼び出し方：

```powershell
delete-staging-slot.ps1 `
  -serviceName "<serviceName>" ` # クラウドサービスのリソース名。
  -subscriptionDataFile "subscriptionDataFile" # 管理証明書ファイル（Get-AzurePublishSettingsFile）、publishsettings ファイルまでのフルパス。
```


