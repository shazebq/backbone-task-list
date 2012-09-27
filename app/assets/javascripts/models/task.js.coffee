class BackboneTaskList.Models.Task extends Backbone.Model
  urlRoot: '/tasks'

  # model logic in the model
  setTitle: (new_title) ->
    this.set
      "title": new_title
    this.save()