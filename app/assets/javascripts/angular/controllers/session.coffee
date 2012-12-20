class @SessionController
  constructor: ($scope, $http) ->
    $http.get('/user/').success (user) ->
      $scope.user = user
    .error ->
      $scope.user = null

    $scope.logOut = ->
      $http.delete('/auth/logout/').success ->
        $scope.user = null
