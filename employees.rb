# model employees using ruby
#

# array
# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, false]
# p employee1

# employee1.each do |employee|

# Majora Carter makes $80000 per year
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# # hash
# employee1 = {
#   "last_name" => "Carter",
#   "salary" => 80000,
#   "active" => true,
#   "first_name" => "Majora"
# }
# employee2 = {
#   "first_name" => "Danilo",
#   "last_name" => "Campos",
#   "salary" => 70000,
#   "active" => false
# }


# employee2 = {
#   :first_name => "Danilo",
#   :last_name => "Campos",
#   :salary => 70000,
#   :active => false
# }

# SAME AS employee2 on line 27
# employee2 = {
#   first_name: "Danilo",
#   last_name: "Campos",
#   salary: 70000,
#   active: false
# }

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year"

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year"
module Actualize
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
end
