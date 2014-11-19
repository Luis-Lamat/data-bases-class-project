class Workshop < ActiveRecord::Base
  has_one :order_vehicle_workshop, inverse_of: :workshop

	validates :name, presence: true
end
