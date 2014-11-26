class Workshop < ActiveRecord::Base
  has_many :order_vehicle_workshops, inverse_of: :workshop

	validates :name, presence: true
end
