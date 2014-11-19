class Employee < ActiveRecord::Base
  has_many :orders, inverse_of: :employee
end
