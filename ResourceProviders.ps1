#Get a list of Resource Providers
Get-AzResourceProvider -ListAvailable | Select-Object ProviderNamespace, RegistrationState

#To see all Registered Resource Providers
Get-AzResourceProvider -ListAvailable | Where-Object RegistrationState -eq "Registered" | Select-Object ProviderNamespace, RegistrationState | Sort-Object ProviderNamespace

#To see the resource types for a resource provider
(Get-AzResourceProvider -ProviderNamespace Microsoft.MachineLearning).ResourceTypes.ResourceTypeName

#To get the supported locations for a resource type
((Get-AzResourceProvider -ProviderNamespace Microsoft.MachineLearning).ResourceTypes | Where-Object ResourceTypeName -eq Workspaces).Locations
