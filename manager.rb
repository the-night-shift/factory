require './employees.rb'
require './email_reportable.rb'

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


# pp manager1



# p manager1.employees
# Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method).

# make a method called give_all_raises
# what are the manager's employees?
# loop through manager's employees
# give them all a raise (using give_annual_raise)



# make a method called fire_all_employees
# what are the manager's employees?
# loop through manager's employees
# give them all a pink slip

# get the right data @employees
# loop through the data --- the same every time
# modify the data in some way --- easy or difficult depending on the question
