resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'toy-product-launch-plan-starter'
  location: 'SouthCentralUS'
  sku: {
    name: 'F1'
  }
}

resource appServiceplan 'Microsoft.Web/sites@2023-01-01' = {
  name: 'toy-product-colin-wells-99'
  location: 'SouthCentralUS'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
