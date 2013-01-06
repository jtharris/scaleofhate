class @ListService

  constructor: ($http) ->
    @http = $http
    # TODO:  Use $cacheFactory here???
    @lists = {}

  get: (id, callback) =>
    if @lists[name]
      callback(@lists[name])
    else
      @http.get("/lists/#{id}/").success((list) =>
        @lists[name] = @_unrollList(list)
        callback(list)
      ).error ->
        callback null

  query: (callback) =>

    # temp!!
    if @lists.length
      callback @lists
    else
      @http.get('/lists/').success (lists) =>
        @lists = @_unrollList(list) for list in lists
        callback lists

  update: (list, callback) =>
    @http.put("/lists/#{list._id}/", {list: @_rollList(list)}).success (list) =>
      callback(list) if callback

  _rollList: (list) ->
    list.items = for item in list.items
      item.value
    list

  _unrollList: (list) ->
    list.items = for item in list.items
      {value: item}
    list
