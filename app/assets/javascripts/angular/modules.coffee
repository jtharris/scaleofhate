
angular.module('scale-of-hate', []).config(['$routeProvider', ($provider) ->
  $provider.when('/', { templateUrl: '/assets/lists.html', controller: 'ListsController' })
  $provider.when('/lists/:name', { templateUrl: '/assets/list.html', controller: 'ListController' })])
