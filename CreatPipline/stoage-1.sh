#!/bin/bash
az login

groupName="myGroupmendy"
templateFile="https://raw.githubusercontent.com/mendi2770/AzurAssignment/main/CreatPipline/storage-accounts.json"
#templateFile2="vm-windwos-server.json"

az group create \
  --name $groupName \
  --location "France Central"

az deployment group create \
  --name blanktemplate \
  --resource-group $groupName \
  --template-file $templateFile 

#az deployment group create \
#  --name blanktemplate \
#  --resource-group $groupName \
#  --template-file $templateFile2 
