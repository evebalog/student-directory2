# let's put all students into an array
#students = [
#  {name: "Dr. Hannibal Lecter", cohort: :november},
#  {name: "Darth Vader", cohort: :november},
#  {name: "Nurse Ratched", cohort: :november},
#  {name: "Michael Corleone", cohort: :november},
#  {name: "Alex DeLarge", cohort: :november},
#  {name: "The Wicked Witch of the West", cohort: :november},
#  {name: "Terminator", cohort: :november},
#  {name: "Freddy Krueger", cohort: :november},
#  {name: "The Joker", cohort: :november},
#  {name: "Joffrey Baratheon", cohort: :november},
#  {name: "Norman Bates", cohort: :november}
#]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
  students.each.with_index(1) do |student, index|
      if
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_only_m(students)
 with_m = students.select{|student| student[:name][0].downcase.match('m')}
    if with_m.count == 0
      puts "There is no student whose name starts with letter M"
    else
      puts "Student names starting with the letter M:"
      with_m.each do |student|
        puts "#{student[:name]}"
      end
    end
  end
end

def print_short_names(students)
short = students.select {|student| student[:name].length < 12}
    if short == 0
      puts "There are no students with name shorter than 12 characters"
    else
      puts "Students with name shorter than 12 characters:"
      short.each.with_index(1) do |student, index|
        puts "#{index}. #{student[:name]}"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
print_only_m(students)
print_short_names(students)
