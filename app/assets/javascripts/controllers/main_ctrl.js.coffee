HSFans.controller('MainCtrl', ['$scope', ($scope) ->
  $scope.isActive = (path) ->
    path_parts = window.location.href.split('/')
    if path_parts[path_parts.length - 1].indexOf(path) >= 0
      'active'
    else
      ''
])
