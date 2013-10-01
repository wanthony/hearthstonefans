HSFans.controller('CardListCtrl', ['$scope', 'CardAPI', ($scope, CardAPI) ->
  $scope.api = CardAPI

  QUALITY_INDEX_MAP =
    basic: 0
    common: 1
    rare: 2
    epic: 3
    legendary: 4

  $scope.cards = $scope.filteredCards = $scope.api.Card.query()

  for card in $scope.cards
    card.quality_index = QUALITY_INDEX_MAP[quality.toLowerCase()]

  $scope.rowClass = (card) ->
    "row-#{card.quality.toLowerCase()}"

  $scope.cellClass = (card) ->
    "cell-#{card.quality.toLowerCase()}"

  $scope.predicate = 'name'
  $scope.reverse = false

  $scope.changeSorting = (predicate) ->
    if predicate.toLowerCase() == 'quality'
      $scope.predicate = 'quality_index'
    else
      $scope.predicate = predicate

    $scope.reverse = !$scope.reverse
])
