require './email_reportable.rb'
require './employees.rb'
require './manager.rb'
require './intern.rb'

employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
# employee1.print_info
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

manager1 = Manager.new({:first_name => "Manny", :last_name => "Williams", :salary => 100000, :active => true, employees: [employee1, employee2]})

# pp manager1
manager1.send_report

# employee2.print_info




# p 'printing employee1.....'
# p employee1
# p employee1.first_name

# employee1.first_name = "joey"
# p employee1.first_name



intern1 = Intern.new({:first_name => "Ashook", :last_name => "Dilbert", :salary => 0, :active => true})

# should work
intern1.print_info

# should work
intern1.send_report

# should break
# intern1.give_all_raises


p manager1
manager1.give_all_raises
p manager1
