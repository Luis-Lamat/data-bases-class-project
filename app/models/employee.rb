class Employee < ActiveRecord::Base
  has_many :orders, inverse_of: :employee
  has_many :labors, inverse_of: :employee

	validates :name, presence: true
	validates :last_name, presence: true
	validates :salary, presence: true
end
