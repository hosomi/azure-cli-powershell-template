# VM

Azure 仮想マシンへの操作。  
　  
``まずは作成のみ、他の操作は随時追記します。``  
　  
## Azure CLI

:link: [az vm | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/vm)  
:link: [az vm # create | Microsoft Docs](https://docs.microsoft.com/ja-jp/cli/azure/vm#az-vm-create)  
:link: [クイック スタート - Azure CLI を使用して Windows VM を作成する - Azure Windows Virtual Machines | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/quick-create-cli)  


``az vm create``: 

``引数の種類が多いので最低限必要な項目のみ``  
``VM サイズ、作成先のリージョンは適宜指定してください。``  
``--resource-group`` : 既存のリソースグループを指定。  
``--name`` : 作成する VM 名。  
``--image`` : 使用する VM イメージ（利用できるイメージの一覧は ``az vm image list`` で確認できます。）  
``--admin-username`` : 管理者権限のユーザ名。  
``--generate-ssh-keys`` : SSH 公開鍵ファイルを作成（当コマンドを実行した環境に作成されます）。  

```bash
az vm create \
  --resource-group *****-********-****-****-****-************ \
  --name MeanStack \
  --image Canonical:UbuntuServer:16.04-LTS:latest \
  --admin-username azureuser \
  --generate-ssh-keys
{
  "fqdns": "",
  "id": "/subscriptions/********-****-****-****-************/resourceGroups/*****-********-****-****-****-************/providers/Microsoft.Compute/virtualMachines/MeanStack",
  "location": "japanwest",
  "macAddress": "00-22-48-EE-F8-E4",
  "powerState": "VM running",
  "privateIpAddress": "10.0.0.4",
  "publicIpAddress": "***.***.**.***",
  "resourceGroup": "*****-********-****-****-****-************",
  "zones": ""
}
```

![Azure Portal VM - MeanStack](azure-vm-01.png)  

SSH 接続する場合は パブリック IP アドレスに ``--admin-username`` で指定した管理者ユーザで接続できます。

``ssh azureuser@***.***.**.***`` :   

```bash
$ ssh azureuser@***.***.**.***
Welcome to Ubuntu 16.04.7 LTS (GNU/Linux 4.15.0-1092-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

# ~ 省略

azureuser@MeanStack:~$
```


## Azure PowerShell

:link: [New-AzVM (Az.Compute) | Microsoft Docs](https://docs.microsoft.com/ja-jp/powershell/module/az.compute/new-azvm)  
:link: [Azure 仮想マシンの PowerShell のサンプル - Azure Windows Virtual Machines | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/powershell-samples)  

``New-AzVM`` :  

``引数の種類が多いので最低限必要な項目のみ``  
``VM サイズ、作成先のリージョンは適宜指定してください。``  
``-ResourceGroupName`` : 既存のリソースグループを指定。   
``-Name`` : 作成する VM 名。  
``-Image`` : 使用する VM イメージ、利用できるイメージは [Azure Marketplace イメージを検索して使用する - Azure Windows Virtual Machines | Microsoft Docs](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/cli-ps-findimage) を参照してください。  
``-Credential`` :  (Get-Credential) 作成するユーザ名、パスワードをダイアログから入力。  
  パブリック IP アドレス から SSH 接続する場合、 Get-Credential はセキュリティ上推奨されませんので、必要に応じて SSH キーを作成してください。  
  [Quickstart - Create a Linux VM with Azure PowerShell - Azure Linux Virtual Machines | Microsoft Docs](https://docs_microsoft_com.it.overbrowser.com/nb-no/azure/virtual-machines/linux/quick-create-powershell#create-ssh-key-pair)  

```powershell
New-AzVM `
  -ResourceGroupName *****-********-****-****-****-************ `
  -Name MeanStack `
  -Image Canonical:UbuntuServer:16.04-LTS:latest `
  -Credential (Get-Credential)

コマンド パイプライン位置 1 のコマンドレット Get-Credential
次のパラメーターに値を指定してください:
Credential

ResourceGroupName        : *****-********-****-****-****-************
Id                       : /subscriptions/********-****-****-****-************/resourceGroups/*****-********-****-****-****-************/providers/Microsoft.Compute/virtualMachines/MeanStack
VmId                     : 16535f1d-4e8e-448b-b486-f30dc1c492a8
Name                     : MeanStack
Type                     : Microsoft.Compute/virtualMachines
Location                 : westus
Tags                     : {}
HardwareProfile          : {VmSize}
NetworkProfile           : {NetworkInterfaces}
OSProfile                : {ComputerName, AdminUsername, LinuxConfiguration, Secrets, AllowExtensionOperations, Re
quireGuestProvisionSignal}
ProvisioningState        : Succeeded
StorageProfile           : {ImageReference, OsDisk, DataDisks}
FullyQualifiedDomainName : meanstack-******.westus.cloudapp.azure.com
```








　  
　  
　  
　  
　  
　  

* * *

###### :copyright: 商標について

<sup>当ドキュメントに記載されている会社名、システム名、製品名は一般に各社の登録商標または商標です。</sup>  
<sup>なお、本文および図表中では、「™」、「®」は明記しておりません。</sup>  

###### 免責事項  
<sup>当ドキュメント上の掲載内容については細心の注意を払っていますが、その情報に関する信頼性、正確性、完全性について保証するものではありません。</sup>  
<sup>掲載された内容の誤り、および掲載された情報に基づいて行われたことによって生じた直接的、また間接的トラブル、損失、損害については、筆者は一切の責任を負いません。</sup>  
<sup>また当ドキュメント、およびドキュメントに含まれる情報、コンテンツは、通知なしに随時変更されます。</sup>  