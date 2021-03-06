class BackboneTaskList.Routers.Tasks extends Backbone.Router
  routes:
    "": "index"

  initialize: ->
    @collection = new BackboneTaskList.Collections.Tasks()
    @model = new BackboneTaskList.Models.Task()

    # example of having defaults but overriding them
    @photoModel = new BackboneTaskList.Models.Photo(caption: "not the default caption anymore!")

    # no fetch needed on initial page load
    # you're getting the initial data from the rails view and setting to @collection
    #@collection.reset($("#container").data('tasks'))
    #console.log($("#container").data('tasks'))

    @collection.fetch()

  index: ->
    #alert("okay, you hit the right route!")

    task_index_view = new BackboneTaskList.Views.TasksIndex(collection: @collection, model: @model)

    photoView = new BackboneTaskList.Views.PhotoView(model: @photoModel)

    $("#tasks_index").html(task_index_view.render().el)

    $("#photos").html(photoView.render().el)
