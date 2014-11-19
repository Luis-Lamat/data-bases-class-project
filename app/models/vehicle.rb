class Vehicle < ActiveRecord::Base
	validates :series_num, presence: true
	validates :model, presence: true
	validates :brand, presence: true
	validates :color, presence: true
	validates :placas, presence: true
	validates :created_at, presence: true
end
