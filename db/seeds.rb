# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

question_list = JSON.parse(File.read('questions.json'))
question_access_list = JSON.parse(File.read('question_access.json'))

questions = Question.create(question_list)
question_access = QuestionAccess.create(question_access_list)