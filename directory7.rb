def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  students = []  
  
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp

  puts "Please enter month of cohort"
  month = gets.chomp

    until name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: month}
        puts "Now we have #{students.count} students"
        #get another name from the user
        puts "Please enter another student's details"
        puts "To finish, just hit return twice"
        name = gets.chomp
    end
    #return the array of students
    students
end

students = input_students
print_header
print(students)
print_footer(students)
