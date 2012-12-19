class @ListController
  constructor: ($scope, $http, $routeParams) ->
    $http.get("/lists/#{ $routeParams.name }").success (list) ->
      $scope.list = list

class @ListsController
  constructor: ($scope, $http) ->
    $http.get('/lists/').success (lists) ->
      $scope.lists = lists
