class Employee < ActiveRecord::Base
  has_many :orders, inverse_of: :employee
  has_many :labors, inverse_of: :employee
end
