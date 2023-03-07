require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200} 
end

class Store < ActiveRecord::Base
  validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence:true
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validate :must_carry_mens_or_womens_clothes

  def must_carry_mens_or_womens_clothes
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "You cannot make create a store that also does not carry either men's or women's apparel.")
    end
  end
end

puts "Provide a new store name > "
answer = gets.chomp.to_s

new_store = Store.create(name: answer)
puts "Is this NEW STORE is valid? " + new_store.valid?.to_s.upcase

puts "Error when try to create a new store: " + new_store.errors.details[:name].to_s

puts "Error when try to upload annual_revenue: " + new_store.errors.details[:annual_revenue].to_s

puts "mens_apparel / womens_apparel errors: " + new_store.errors.details[:mens_apparel].to_s






