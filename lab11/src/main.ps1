$rg = New-AzResourceGroup -Name "armLab11" -Location 'Korea Central'
$job = "job2"
$template="C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab11\template\vnet.json"

New-AzResourceGroupDeployment -Name $job -TemplateFile $template -ResourceGroupName $rg.ResourceGroupName