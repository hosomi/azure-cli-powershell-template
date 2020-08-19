# Storage

Azure Storage への操作。

## Azure CLI

:link: [az storage account | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account)  
:link: [az storage account create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/storage/account#az-storage-account-create)  

``az storage account create`` :   

``必須のみ``  
``--name`` : 作成する Azure Storage アカウント名。  
``--resource-group`` : 既存のリソースグループを指定。  
``--kind`` :  
　  Storage - General purpose Storage account that supports storage of Blobs, Tables, Queues, Files and Disks.  
　  StorageV2 - General Purpose Version 2 (GPv2) Storage account that supports Blobs, Tables, Queues, Files, and Disks, with advanced features like data tiering.  
　  BlobStorage - Blob Storage account which supports storage of Blobs only.  
　  BlockBlobStorage - Block Blob Storage account which supports storage of Block Blobs only.  
　  FileStorage - File Storage account which supports storage of Files only. The default value is StorageV2.  
``--location`` : 作成先のリージョン。  

```bash
$ az storage account create \
  --resource-group *****-********-****-****-****-************ \
  --name learnstoragehosomi \
  --kind StorageV2 \
  --location japanwest
{
  "accessTier": "Hot",
  "allowBlobPublicAccess": null,
  "azureFilesIdentityBasedAuthentication": null,
  "blobRestoreStatus": null,
  "creationTime": "2020-08-17T02:40:26.075364+00:00",
  "customDomain": null,
  "enableHttpsTrafficOnly": true,
  "encryption": {
    "keySource": "Microsoft.Storage",
    "keyVaultProperties": null,
    "requireInfrastructureEncryption": null,
    "services": {
      "blob": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2020-08-17T02:40:26.153392+00:00"
      },
      "file": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2020-08-17T02:40:26.153392+00:00"
      },
      "queue": null,
      "table": null
    }
  }

//  省略

}
```

## Azure PowerShell

:link: [New-AzStorageAccount (Az.Storage) | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/az.storage/new-azstorageaccount)  

``New-AzStorageAccount`` :  

``必須のみ``  
``-Name`` : 作成する Azure Storage アカウント名。  
``-ResourceGroupName`` : 既存のリソースグループを指定。  
``-Kind`` :  
　  Storage - General purpose Storage account that supports storage of Blobs, Tables, Queues, Files and Disks.  
　  StorageV2 - General Purpose Version 2 (GPv2) Storage account that supports Blobs, Tables, Queues, Files, and Disks, with advanced features like data tiering.  
　  BlobStorage - Blob Storage account which supports storage of Blobs only.  
　  BlockBlobStorage - Block Blob Storage account which supports storage of Block Blobs only.  
　  FileStorage - File Storage account which supports storage of Files only. The default value is StorageV2.  
``-SkuName``:  
　  Standard_LRS - Locally-redundant storage.  
　  Standard_ZRS - Zone-redundant storage.  
　  Standard_GRS - Geo-redundant storage.  
　  Standard_RAGRS - Read access geo-redundant storage.  
　  Premium_LRS - Premium locally-redundant storage.  
　  Premium_ZRS - Premium zone-redundant storage.  
　  Standard_GZRS - Geo-redundant zone-redundant storage.  
　  Standard_RAGZRS - Read access geo-redundant zone-redundant storage.  
``-Location`` : 作成先のリージョン。  


```powershell
PS > New-AzStorageAccount `
  -Name learnstoragehosomi `
  -ResourceGroupName *****-********-****-****-****-************ `
  -Kind StorageV2 `
  -SkuName Standard_LRS `
  -Location japanwest 

StorageAccountName ResourceGroupName                          PrimaryLocation SkuName      Kind      AccessTier CreationTime
------------------ -----------------                          --------------- -------      ----      ---------- --
learnstoragehosomi *****-********-****-****-****-************ japanwest       Standard_LRS StorageV2 Hot        20
```








　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  