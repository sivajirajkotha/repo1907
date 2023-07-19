var numSubnets = 4
var subnetPrefix = [
  '10.0.1.0/27'
  '10.0.2.0/27'
  '10.0.3.0/24'
  '10.0.4.0/27'
]

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'vnet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [for sIndex in range(0, numSubnets): {
      name: 'subnet${sIndex}'
      properties: {
        addressPrefix: subnetPrefix[sIndex]
      }
    }]
  }
}
