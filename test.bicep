//Storage account template
@allowed([
  'Hot'
  'Cool'
])
param accesstier string

@secure()
param pass string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = if (accesstier=='Hot'){
  name: 'storage17072023'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties:{
    accessTier:'Hot'
  }
}



