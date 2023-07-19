
param location string
//param kind string = 'StorageV2'
var sto ='bicep'
var kind = 'StorageV2'
var storageacc ='${sto}${take(uniqueString(resourceGroup().id),17)}'
@allowed([
  'Standard_LRS'
  'Premium_LRS'
])
@description('This is storage account SKU and allowed values are Standard_LRS & Premium_LRS')
param sku string ='Standard_LRS'


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageacc
  location: location
  kind: kind
  sku: {
    name: sku
  }
}



