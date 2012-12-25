class @SessionService
  constructor: ($http) ->
    @http = $http
    @http.get('/sessions/current/').success (user) =>
      @user = user

  logOut: ->
    @http.delete('/sessions/current/').success =>
      @user = null
