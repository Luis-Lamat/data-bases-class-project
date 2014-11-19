class OrderVehicleWorkshop < ActiveRecord::Base
  belongs_to :order, inverse_of: :order_vehicle_workshops
  belongs_to :vehicle, inverse_of: :order_vehicle_workshops
  belongs_to :workshop, inverse_of: :order_vehicle_workshops

  validates :vehicle_id, presence: true
  validates :workshop_id, presence: true
  validates :order_id, presence: true
end
