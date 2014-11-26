class Employee < ActiveRecord::Base
  has_many :orders, inverse_of: :employee
  has_many :labors, inverse_of: :employee

	validates :name, presence: true
	validates :last_name, presence: true
	validates :salary, presence: true

	def full_name
		name + " " + last_name + " - Trabajo: " + labors.count.to_s 
	end
end
