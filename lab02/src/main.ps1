
$rgName = "armLab2"
$templateLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab02\template\lab2.json"
$templateParamLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab02\template\lab2.parameter.json"

## Deploy with parameters
$job = "job." + ((Get-Date -Format "yyyyMMdd.HHmm"))

New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rgName -TemplateFile $templateLocation -TemplateParameterFile $templateParamLocation