class BackboneTaskList.Views.TasksIndex extends Backbone.View
  template: JST['tasks/tasks_index']

  initialize: ->
    @collection.on("reset", @render, this)

  render: ->
    $(this.el).html(@template(tasks: @collection));
    return this


