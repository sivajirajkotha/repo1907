param location string 
param kind string 
param accesstier string 

resource Myfirstdeployment 'Microsoft.Storage/storageAccounts@2021-09-01'={
name: 'bicepstroagedemo845'
kind:kind
location: location
 sku:{
  name:'Standard_LRS'
  }
properties:{ 

accessTier: accesstier
}
}
