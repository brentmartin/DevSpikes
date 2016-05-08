# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Question.create(text: "How well does person set realistic goals on projects?")


example_question = [
"How well does person set realistic goals on projects?",
"Does person execute on items within set timeframes?"
]

example_question.each do |q|
  Question.create(text: q)
end
