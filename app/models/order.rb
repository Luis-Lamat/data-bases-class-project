class Order < ActiveRecord::Base
  has_many :procedures, inverse_of: :order
  has_one :order_vehicle_workshop, inverse_of: :order
  belongs_to :employee, inverse_of: :orders

	validates :entry_date, presence: true
	validates :expenses, presence: true
	validates :tax, presence: true
	validates :total_cost, presence: true
	validates :promised_date, presence: true
end
