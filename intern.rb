require 'pp'
# a manager can do EVERYTHING an employee can do, and also send reports
module EmailReportable
  def send_report
    p 'going to send that report...'
    # write some real code in here
    p 'totally just sent that report'
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_writer :first_name, :active
  # # get an attr that can do both
  # attr_accessor

  # # reader
  # def active
  #   @active
  # end

  # # writer
  # def active=(input_active)
  #   @active = input_active
  # end

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end


  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
# employee1.print_info
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)
# employee2.print_info



class Manager < Employee
  attr_reader :employees
  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    # p 'totally gonna give everybody a raise rn'
    # i = 0
    # @employees.length.times do
    #   @employees[i].give_annual_raise
    #   i += 1
    # end
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager1 = Manager.new({:first_name => "Manny", :last_name => "Williams", :salary => 100000, :active => true, employees: [employee1, employee2]})

# pp manager1
manager1.send_report
# pp manager1



# an intern, does everything an employee does, and also sends reports

class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new({:first_name => "Ashook", :last_name => "Dilbert", :salary => 0, :active => true})

# should work
intern1.print_info

# should work
intern1.send_report

# should break
# intern1.give_all_raises