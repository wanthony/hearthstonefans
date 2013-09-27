HSFans.factory('CardAPI', ['$resource', ($resource) ->
  CardAPI = {}

  CardAPI.Card = $resource('/api/cards/:id', {}, {})

  CardAPI
])
