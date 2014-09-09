require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  students << name if name != ""

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list
students_list =  wagon_sort(students)
students_string = students_list[0..-2].join(", ")

puts "congrats ! Your Wagon has #{students_list.count} students : #{students_string} and #{students_list.last}"
