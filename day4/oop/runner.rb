require "./employee.rb"
require "./manager.rb"
require "./intern.rb"


employee_1 = Actualize::Employee.new(
                          first_name: "Bill", 
                          last_name: "McNeal", 
                          salary: 70000, 
                          active: true
                          )
employee_2 = Actualize::Employee.new(
                          first_name: "Harriet", 
                          last_name: "Hayes", 
                          salary: 80000, 
                          active: true
                          )


manager = Actualize::Manager.new(
                      first_name: "Bill",
                      last_name: "Lumbergh",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Actualize::Intern.new(
                      first_name: "Ryan", 
                      last_name: "Pierce", 
                      salary: 300000
                   )

employee_2.print_info
employee_1.print_info
manager.give_all_raises
manager.fire_all_employees
employee_2.print_info
employee_1.print_info

manager.print_info
intern.send_report