HSFans.controller('CardListCtrl', ['$scope', 'CardAPI', ($scope, CardAPI) ->
  $scope.api = CardAPI

  $scope.cards = $scope.filteredCards = $scope.api.Card.query()

  $scope.rowClass = (card) ->
    "row-#{card.quality.toLowerCase()}"

  $scope.cellClass = (card) ->
    "cell-#{card.quality.toLowerCase()}"

  $scope.predicate = 'name'
  $scope.reverse = false

  $scope.changeSorting = (predicate) ->
    $scope.predicate = predicate
    $scope.reverse = !$scope.reverse
])
