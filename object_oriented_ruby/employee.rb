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
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    return @first_name
  end
  def first_name=(first_name)
    @first_name = first_name
  end
  def reverse_first_name
    return @first_name.reverse
  end

  def last_name
    return @last_name
  end
  def last_name=(last_name)
    @last_name = last_name
  end

  def salary
    return @salary
  end
  def salary=(salary)
    @salary = salary
  end

  def active
    return @active
  end
  def active=(active)
    @active = active
  end

  def info
    return "#{ first_name } #{ last_name } makes #{ salary } a year"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee_1 = Employee.new("Bill", "McNeal", 700000, true)
p employee_1.info
p employee_1.give_annual_raise
p employee_1.info
p employee_1.reverse_first_name