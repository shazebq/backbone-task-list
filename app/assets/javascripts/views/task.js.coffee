class BackboneTaskList.Views.Task extends Backbone.View
  template: JST['tasks/single_task']
  tagName: 'tr'

  initialize: ->
    #@collection.on("add", @render, this)


  render: ->
    $(@el).html(@template(task: @model));
    return this



