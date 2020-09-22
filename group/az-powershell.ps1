# リソースグループの一覧表示。
Get-AzResourceGroup

# リソースグループの作成。
New-AzResourceGroup `
  -Name "<Name>" `
  -Location "<Location>"

# リソースグループの削除。
Remove-AzResourceGroup  `
  -Name "<Name>"
