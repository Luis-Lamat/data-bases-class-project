class Vehicle < ActiveRecord::Base

  belongs_to :client, inverse_of: :vehicles
  has_many :order_vehicle_workshops, inverse_of: :vehicle

	validates :series_num, presence: true
	validates :model, presence: true
	validates :brand, presence: true
	validates :color, presence: true
	validates :placas, presence: true

  def vehicle_info
    model + " " + brand + " " + placas
  end

end
