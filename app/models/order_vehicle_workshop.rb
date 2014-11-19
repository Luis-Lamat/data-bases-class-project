class OrderVehicleWorkshop < ActiveRecord::Base
  belongs_to :order, inverse_of: :order_vehicle_workshops
  belongs_to :vehicle, inverse_of: :order_vehicle_workshops
  belongs_to :workshop, inverse_of: :order_vehicle_workshops
end
