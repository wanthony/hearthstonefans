HSFans.factory('CardAPI', ['$resource', ($resource) ->
  CardAPI = {}

  CardAPI.Card = $resource('/api/cards/:id', {}, {
    query:
      method: 'GET'
      isArray: true
  })

  CardAPI
])
