$rg = 'sotarge-accounts-assignment'
$storageName = Read-Host -Prompt "Enter the Storage name"

New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AzResourceGroupDeployment `
    -Name 'newstoragemendy' `
    -ResourceGroupName $rg `
    -TemplateUri 'https://github.com/mendi2770/AzurAssignment/edit/main/CreatPipline/storang-and-vm.ps1' `
    -storageName "mednypipestorage"


#$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
#$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
#$adminUsername = Read-Host -Prompt "Enter the administrator username"
#$adminPassword = Read-Host -Prompt "Enter the administrator password" -AsSecureString
#$dnsLabelPrefix = Read-Host -Prompt "Enter an unique DNS name for the public IP"

#New-AzResourceGroup -Name $resourceGroupName -Location "$location"
#New-AzResourceGroupDeployment `
    #-ResourceGroupName $resourceGroupName `
    #-TemplateFile "vm-windwos-server.json" `
    #-adminUsername $adminUsername `
    #-adminPassword $adminPassword `
    #-dnsLabelPrefix $dnsLabelPrefix

 #(Get-AzVm -ResourceGroupName $resourceGroupName).name
