# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
instructor_file = open('instructor.json')
js = instructor_file.read
parsed_file = JSON.parse(js)
parsed_file.each do |line|
	first_name = line["first"]
	last_name = line["last"]
	email = line["email"]
	Instructor.create(first_name: first_name, last_name: last_name, email: email)
end

subject_file = open('subject.json')
js2 = subject_file.read
parsed_file2 = JSON.parse(js2)
parsed_file2.each do |line|
	name = line["name"]
	s_id = line["id"]
	Subject.create(name: name, s_id: s_id)
end

course_file = open('course.json')
js3 = course_file.read
parsed_file3 = JSON.parse(js3)
parsed_file3.each do |line|
	name = line["name"]
	code = line["code"]
	subject = line["subjects"][0]
	Course.create(name: name, code: code, subject: subject)
end
