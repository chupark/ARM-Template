$rg = New-AzResourceGroup -Name "armLab7.1" -Location 'Korea Central'
$job = "task2"
$template = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\mainLAb\template\vnet-hub.json"

New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg.ResourceGroupName -TemplateFile $template




$rg = New-AzResourceGroup -Name "armLab7.2" -Location 'Korea Central'
$job = "task2"
$template = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\mainLAb\template\vnet-spoke.json"

New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg.ResourceGroupName -TemplateFile $template