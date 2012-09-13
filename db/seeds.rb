# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

titles = ["Pick up milk from store", "Walk the dog", "Wash the car", "Go to dentist"]

titles.each do |task_title|
  Task.create(title: task_title)
end