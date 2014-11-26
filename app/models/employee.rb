class Employee < ActiveRecord::Base
  has_many :orders, inverse_of: :employee
  has_many :labors, inverse_of: :employee

	validates :name, presence: true
	validates :last_name, presence: true
	validates :salary, presence: true

	def full_name
		name + " " + last_name + " - Trabajos: " + orders.count.to_s 
	end

  def full_name_only
    name + " " + middle_name + " " + last_name
  end
end
