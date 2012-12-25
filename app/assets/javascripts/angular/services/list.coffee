class @ListService

  constructor: ($http) ->
    @http = $http
    # TODO:  Use $cacheFactory here???
    @lists = {}

  get: (name, callback) =>
    if @lists[name]
      callback(@lists[name])
    else
      @http.get("/lists/#{name}/").success((list) =>
        @lists[name] = list
        callback(list)
      ).error ->
        callback null

  query: (callback) =>

    # temp!!
    if @lists.length
      callback @lists
    else
      @http.get('/lists/').success (lists) =>
        @lists = lists
        callback lists
