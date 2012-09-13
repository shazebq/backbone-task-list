class BackboneTaskList.Views.TasksIndex extends Backbone.View
  template: JST['tasks/tasks_index']

  events:
    'submit #new_task': 'createTask'

  initialize: ->
    @collection.on("reset", @render, this)
    # this makes it so that whenever a record is added to the colleciton, it re-renders the view
    @collection.on("add", @render, this)

  render: ->
    $(this.el).html(@template(tasks: @collection));
    return this

  createTask: (event) ->
    event.preventDefault()
    @collection.create title: $("#new_task_title").val()






