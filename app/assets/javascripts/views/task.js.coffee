class BackboneTaskList.Views.Task extends Backbone.View
  template: JST['tasks/single_task']

  initialize: ->
    @collection.on("add", @render, this)


  render: ->
    $(@el).html(@template);
    return this



