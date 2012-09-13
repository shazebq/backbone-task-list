class BackboneTaskList.Views.TasksIndex extends Backbone.View
  template: JST['tasks/tasks_index']

  events:
    'submit #new_task': 'createTask'

  initialize: ->
    @collection.on("reset", @render, this)
    # this makes it so that whenever a record is added to the colleciton, it re-renders the view
    # note here that you're not rerendering the entire collection when you add just one task, instead of calling
    # @render, you call @appendTask which appends a task title to the end of the existing task list
    @collection.on("add", @appendTask, this)

  render: ->
    $(@el).html(@template())
    # note here that you call each on @collection using the @appendTask function as the arugment.
    @collection.each(@appendTask)
    return this

  appendTask: (task) ->
    # note that since that each function was called, you automatically receive the task parameter which represents
    # a single model in the collection
    view = new BackboneTaskList.Views.Task(model: task)
    # render the view with the passed task and append the result to id tasks which is the id of the table
    # that contains the tasks
    $("#tasks").append(view.render().el)

  createTask: (event) ->
    event.preventDefault()
    @collection.create title: $("#new_task_title").val()
    # clear the contents of the form after a task is created
    $("#new_task")[0].reset()






