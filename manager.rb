# a manager can do EVERYTHING an employee can do, and also send reports

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_writer :first_name

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
employee1.print_info
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)
employee2.print_info


# p 'printing employee1.....'
# p employee1
# p employee1.first_name

# employee1.first_name = "joey"
# p employee1.first_name


class Manager < Employee
  # attr_reader :first_name, :last_name, :salary
  # attr_writer :first_name

  # def initialize(input_options)
  #   @first_name = input_options[:first_name]
  #   @last_name = input_options[:last_name]
  #   @salary = input_options[:salary]
  #   @active = input_options[:active]
  # end

  # def print_info
  #   p "#{first_name} #{last_name} makes $#{salary} per year"
  # end

  # def give_annual_raise
  #   @salary *= 1.05
  # end

  def send_report
    p 'going to send that report...'
    # write some real code in here
    p 'totally just sent that report'
  end
end


manager1 = Manager.new({:first_name => "Manny", :last_name => "Williams", :salary => 100000, :active => true})

manager1.print_info
manager1.send_report