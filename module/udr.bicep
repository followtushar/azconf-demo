param udrName string 
param udrLocation string
param routes array


resource placeudr 'Microsoft.Network/routeTables@2021-03-01' = {
  name: udrName
  location: udrLocation
  properties: {
    disableBgpRoutePropagation: false
    routes: routes
  }
}

output id string = placeudr.properties.resourceGuid
