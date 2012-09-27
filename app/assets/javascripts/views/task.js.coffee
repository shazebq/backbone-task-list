class BackboneTaskList.Views.Task extends Backbone.View
  template: JST['tasks/single_task']
  text_field_template: JST['tasks/text_field_template']
  tagName: 'tr'

  events:
    "click .icon-trash": "deleteTask"
    "click .edit_button": "editTask"
    "click .save_button": "saveTask"

  initialize: ->
    #console.log(@options)
    #@collection.on("add", @render, this)
    @model.on('destroy', @remove, this)
    @model.on('change', @render, this)

  render: ->
    # set the id of the view div e.g. this.el
    @el.id = "item_row" + @model.get("id")
    $(@el).html(@template(task: @model))
    return this

  deleteTask: (event) ->
    # this is very useful.  No need to reference ids
    # issues a post (delete) request to the server
    @model.destroy()
    # now to update the dom by simply removing the view's el

  editTask: (event) ->
    # note this is an alias for $('.task_title', this.el);
    this.$(".task_title").html(@text_field_template(current_title: @model.get("title")))
    this.$(".edit_button").prop('value', 'Save')
    this.$(".edit_button").addClass("save_button")
    this.$(".save_button").removeClass("edit_button")

  saveTask: (event) ->
    new_title = (this.$(".title_text_field").val())

    @model.setTitle(new_title)

#  Note: moved the following to the model
#    @model.set
#      "title": new_title
#    @model.save()

  remove: ->
    $(@el).remove();











