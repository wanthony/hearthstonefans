var HSFans = angular.module('HSFans', ['ngResource', 'ui.router'])
  .config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');

    $stateProvider
      .state('home', {
        url: '/home',
        templateUrl: '/assets/home.html'
      })
      .state('cards', {
        url: '/cards',
        templateUrl: '/assets/cards.html'
      });
  }]);
