class Employee < ActiveRecord::Base
	validates :name, presence: true
	validates :last_name, presence: true
	validates :salary, presence: true
end
