class Employee < ActiveRecord::Base
<<<<<<< HEAD
	validates :name, presence: true
	validates :last_name, presence: true
	validates :salary, presence: true
=======
  has_many :orders, inverse_of: :employee
  has_many :labors, inverse_of: :employee
>>>>>>> 83a767a18e28dcca65f1f479d24b728b393d6c23
end
