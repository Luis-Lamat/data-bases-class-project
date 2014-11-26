class Order < ActiveRecord::Base
  has_many :procedures, inverse_of: :order
  has_many :order_vehicle_workshops, inverse_of: :order
  belongs_to :employee, inverse_of: :orders

	validates :entry_date, presence: true
	validates :expenses, presence: true
	validates :tax, presence: true
	validates :total_cost, presence: true
	validates :promised_date, presence: true

	def order_info
		id.to_s + " fecha inicial: " + entry_date.to_s + " fecha promesa: " + promised_date.to_s 
	end
end
