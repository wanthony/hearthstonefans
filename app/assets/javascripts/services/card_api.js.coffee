HSFans.factory('CardAPI', ['$resource', 'ngProgress', ($resource, ngProgress) ->
  CardAPI = {}

  CardAPI.Card = $resource('/api/cards/:id', {}, {
    get:
      method: 'GET'
      transformRequest: (data, headersGetter) ->
        ngProgress.start()
      transformResponse: (data, headersGetter) ->
        ngProgress.complete();
    save:
      method: 'POST'
      transformRequest: (data, headersGetter) ->
        ngProgress.start()
      transformResponse: (data, headersGetter) ->
        ngProgress.complete();
    query:
      method: 'GET'
      isArray: true
      transformRequest: (data, headersGetter) ->
        ngProgress.start()
      transformResponse: (data, headersGetter) ->
        ngProgress.complete();
    remove:
      method: 'DELETE'
      transformRequest: (data, headersGetter) ->
        ngProgress.start()
      transformResponse: (data, headersGetter) ->
        ngProgress.complete();
    delete:
      method: 'DELETE'
      transformRequest: (data, headersGetter) ->
        ngProgress.start()
      transformResponse: (data, headersGetter) ->
        ngProgress.complete();
  })

  CardAPI
])
