class @ListService

  constructor: ($http) ->
    @http = $http
    # TODO:  Use $cacheFactory here???
    @lists = {}

  get: (id, callback) =>
    if @lists[id]
      callback(@lists[id])
    else
      @http.get("/lists/#{id}/").success((list) =>
        @lists[id] = list
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

  update: (list, callback) =>
    @http.put("/lists/#{list._id}/", {list: list}).success (list) =>
      callback(list) if callback
