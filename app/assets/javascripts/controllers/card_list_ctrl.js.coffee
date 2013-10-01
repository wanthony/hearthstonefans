HSFans.controller('CardListCtrl', ['$scope', 'CardAPI', '$filter', ($scope, CardAPI, $filter) ->
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

  $scope.countCards = (cards, quality) ->
    count = 0

    for card in cards
      count += 1 if card.quality == quality

    count

  $scope.basicCount = ->
    cards = angular.copy($scope.cards)

    filteredCards = $filter('filter')(cards, $scope.cardNameFilter)

    $scope.countCards(filteredCards, 'Basic')

  $scope.commonCount = ->
    cards = angular.copy($scope.cards)

    filteredCards = $filter('filter')(cards, $scope.cardNameFilter)

    $scope.countCards(filteredCards, 'Common')

  $scope.rareCount = ->
    cards = angular.copy($scope.cards)

    filteredCards = $filter('filter')(cards, $scope.cardNameFilter)

    $scope.countCards(filteredCards, 'Rare')

  $scope.epicCount = ->
    cards = angular.copy($scope.cards)

    filteredCards = $filter('filter')(cards, $scope.cardNameFilter)

    $scope.countCards(filteredCards, 'Epic')

  $scope.legendaryCount = ->
    cards = angular.copy($scope.cards)

    filteredCards = $filter('filter')(cards, $scope.cardNameFilter)

    $scope.countCards(filteredCards, 'Legendary')

  $scope.totalCount = ->
    cards = angular.copy($scope.cards)

    $filter('filter')(cards, $scope.cardNameFilter).length
])
