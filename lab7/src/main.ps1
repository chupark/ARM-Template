$rg = New-AzResourceGroup -Name "armLab7" -Location 'Korea Central'
$job = "job1"
$template="C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab7\template\copy-resource.json"
New-AzResourceGroupDeployment -Name $job -TemplateFile $template -ResourceGroupName $rg.ResourceGroupName