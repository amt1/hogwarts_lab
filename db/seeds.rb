require_relative('../models/student.rb')

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 11
  })

  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "house" => "Slytherin",
    "age" => 12
    })

  student3 = Student.new({
    "first_name" => "Hermione",
    "last_name" => "Grainger",
    "house" => "Gryffindor",
    "age" => 11
    })

student1.save
student2.save
student3.save
