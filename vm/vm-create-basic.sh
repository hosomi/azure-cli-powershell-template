az vm create \
  --resource-group *****-********-****-****-****-************ \
  --name MeanStack \
  --image Canonical:UbuntuServer:16.04-LTS:latest \
  --admin-username azureuser \
  --generate-ssh-keys