#!/bin/bash
az login

groupName="myGroupmendy"
templateFile="storage-accounts.json"
templateFile2="vm-windwos-server.json"

az group create \
  --name $groupName \
  --location "France Central"

az deployment group create \
  --name blanktemplate \
  --resource-group $groupName \
  --template-file $templateFile 

az deployment group create \
  --name blanktemplate \
  --resource-group $groupName \
  --template-file $templateFile2 