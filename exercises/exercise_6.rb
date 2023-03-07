require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
end

class Store < ActiveRecord::Base
  has_many :employees
end

@store1 = Store.find(1)
@store2 = Store.find(2)
@store4 = Store.find(4)

@store1.employees.create(first_name: "Mauro", last_name: "Pereira", hourly_rate: 90)
@store1.employees.create(first_name: "Marcelinho", last_name: "Carioca", hourly_rate: 40)
@store1.employees.create(first_name: "Jose", last_name: "Rivelino", hourly_rate: 50)
@store2.employees.create(first_name: "Tyson", last_name: "Mike", hourly_rate: 60)
@store2.employees.create(first_name: "Julies", last_name: "Rimmet", hourly_rate: 65)
@store2.employees.create(first_name: "Valter", last_name: "Casagrande", hourly_rate: 68)
@store1.employees.create(first_name: "Jose", last_name: "Neto", hourly_rate: 70)
@store4.employees.create(first_name: "Ayrton", last_name: "Senna", hourly_rate: 34)
@store4.employees.create(first_name: "Jose", last_name: "Romario", hourly_rate: 44)












