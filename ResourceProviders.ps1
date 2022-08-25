#Get a list of Resource Providers
Get-AzResourceProvider -ListAvailable | Select-Object ProviderNamespace, RegistrationState

#To see all Registered Resource Providers
Get-AzResourceProvider -ListAvailable | Where-Object RegistrationState -eq "Registered" | Select-Object ProviderNamespace, RegistrationState | Sort-Object ProviderNamespace
