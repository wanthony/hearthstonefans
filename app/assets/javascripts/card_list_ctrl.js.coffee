HSFans.controller('CardListCtrl', ['$scope', 'CardAPI', ($scope, CardAPI) ->
  $scope.api = CardAPI

  $scope.cards = $scope.api.Card.query()

  $scope.rowClass = (card) ->
    "row-#{card.quality.toLowerCase()}"

  $scope.cellClass = (card) ->
    "cell-#{card.quality.toLowerCase()}"
])
