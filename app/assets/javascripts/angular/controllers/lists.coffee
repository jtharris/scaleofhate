class @ListController
  constructor: ($scope, $routeParams, lists) ->
    lists.get $routeParams.name, (list) ->
      $scope.list = list

class @ListsController
  constructor: ($scope, lists) ->
    lists.query (l) ->
      $scope.lists = l
