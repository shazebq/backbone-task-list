class BackboneTaskList.Routers.Tasks extends Backbone.Router
  routes:
    "": "index"

  initialize: ->
    @collection = new BackboneTaskList.Collections.Tasks()
    @collection.reset($("#container").data('tasks')) # no fetch needed on initial page load

  index: ->
    #alert("okay, you hit the right route!")

    task_index_view = new BackboneTaskList.Views.TasksIndex(collection: @collection)

    $("body").html(task_index_view.render().el)
