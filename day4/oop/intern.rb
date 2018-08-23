
require "./Reportable.rb"
require "./employee.rb"

module Actualize
  class Intern < Employee
    include Reportable
  end
end