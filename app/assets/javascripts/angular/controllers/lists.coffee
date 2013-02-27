class @ListController
  constructor: ($scope, $routeParams, $location, lists, session) ->
    lists.get $routeParams.name, (list) ->
      $scope.list = list
      $scope.isOwner = if session.user then list.owner_id == session.user._id else false

      $scope.addItem = ->
        $scope.list.items.push({name: ''})

      $scope.removeItem = (index) ->
        $scope.list.items.splice(index, 1)

      $scope.save = ->
        lists.update($scope.list, -> $location.path("/lists/#{$scope.list._id}"))

class @ListsController
  constructor: ($scope, lists) ->
    lists.query (l) ->
      $scope.lists = l
