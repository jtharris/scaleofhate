
angular.module('scale-of-hate', []).config(['$routeProvider', '$provide', ($routeProvider, $provide) ->
  $routeProvider.when('/', { templateUrl: '/assets/lists.html', controller: 'ListsController' })
  $routeProvider.when('/lists/:name', { templateUrl: '/assets/list.html', controller: 'ListController' })
  $routeProvider.when('/lists/:name/edit', { templateUrl: '/assets/edit_list.html', controller: 'ListController' })

  $provide.factory 'lists', ['$http', ($http) ->
    new ListService($http)
  ]

  $provide.factory 'session', ['$http', ($http) ->
    new SessionService($http)
  ]
])
