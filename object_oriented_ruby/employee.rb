# local_variable
# @instance_variable
# @@class_variable
# $global_variable
# CONSTENT

# def method_name

# end

# class UpperCamelCase
# end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def reverse_first_name
    return @first_name.reverse
  end

  def info
    return "#{ first_name } #{ last_name } makes #{ salary } a year"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Bill", 
                          last_name: "McNeal", 
                          salary: 700000, 
                          active: true
                         )
p employee_1.info
p employee_1.give_annual_raise
p employee_1.info
p employee_1.reverse_first_name