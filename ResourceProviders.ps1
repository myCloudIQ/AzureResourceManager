#Get a list of Resource Providers
Get-AzResourceProvider -ListAvailable | Select-Object ProviderNamespace, RegistrationState
