# Deploy Storage Account  -- lab1.json
$rg = New-AzResourceGroup -Name cwArmLab1 -Location 'Korea Central'
$rgName = "cwArmLab1"
$templateLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab01\lab1.json"
$templateParamLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab01\lab1.parameter.json"
New-AzResourceGroupDeployment -Name job1 -ResourceGroupName $rg.ResourceGroupName -TemplateFile .\lab01\lab1.json 

Test-AzResourceGroupDeployment -TemplateFile .\lab01\lab1.json -ResourceGroupName cwArmLab1 -Verbose
$job = "job5"

New-AzResourceGroupDeployment -Name $job -TemplateFile $templateLocation -ResourceGroupName $rgName


## Deploy with parameters
$job = "job6." + ((Get-Date -Format "yyyyMMdd.HHmm"))
$storageAccountPrefix = "pcw1"
$sa = New-AzResourceGroupDeployment -Name $job `
                                    -TemplateFile  $templateLocation `
                                    -ResourceGroupName $rgName `
                                    -storageAccountPrefix $storageAccountPrefix


## Deploy with parameter file 
$job = "job6." + ((Get-Date -Format "yyyyMMdd.HHmm"))
$sa2 = New-AzResourceGroupDeployment -Name $job `
                                    -TemplateFile  $templateLocation `
                                    -ResourceGroupName $rgName `
                                    -TemplateParameterFile $templateParamLocation


Remove-AzResourceGroup -Name $rgName -Force