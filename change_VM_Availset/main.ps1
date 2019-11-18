New-AzResourceGroupDeployment -ResourceGroupName "RG-AvailSetChange" -TemplateFile D:\ARM-Template\change_VM_Availset\vmTemplate.json -Name VMDeploy1

$testt = New-AzResourceGroupDeployment -ResourceGroupName "RG-AvailSetChange" -TemplateFile D:\ARM-Template\change_VM_Availset\test.json