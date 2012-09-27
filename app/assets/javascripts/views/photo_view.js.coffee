class BackboneTaskList.Views.PhotoView extends Backbone.View
  template: JST['misc/photos']

  events:
    "submit #edit_caption": "editCaption"

  initialize: ->
    @model.on("change", @render, this)

  render: ->
    $(@el).html(@template(photo: @model))
    this

  editCaption: (event) ->
    event.preventDefault()
    @model.set(caption: $("#new_caption").val())

