class Vehicle < ActiveRecord::Base

  belongs_to :client, inverse_of: :vehicle
  has_one :order_vehicle_workshop, inverse_of: :vehicle

	validates :series_num, presence: true
	validates :model, presence: true
	validates :brand, presence: true
	validates :color, presence: true
	validates :placas, presence: true
end
