class BackboneTaskList.Models.Photo extends Backbone.Model
  defaults:
    caption: "A blank photo"
    tags: ["untagged"]
    location: "home"

  initialize: ->
    # set up an event listener
    console.log("A new photo model has been intialized!")

    # set up a listener for the model changing
    this.on("change", ->
                        console.log("oh no! somebody changed me!"))
