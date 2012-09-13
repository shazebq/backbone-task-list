window.BackboneTaskList =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  # you use data which is provided in the rails view to initialize the data
  init: ->
    alert("first alert")
    new BackboneTaskList.Routers.Tasks();
    Backbone.history.start();

$(document).ready ->
  BackboneTaskList.init()