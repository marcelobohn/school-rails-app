# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create name: 'Marcelo', register_number: 'A01', status: 1
Course.create name: 'RSpec', description: 'Test Framework', status: 1
Classroom.create student_id:Student.first.id, course_id:Course.first.id
