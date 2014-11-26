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
		"Folio: " + id.to_s + ", Fecha inicial: " + (entry_date.strftime('%v')).to_s + ", Fecha promesa: " + (promised_date.strftime('%v')).to_s 
	end
end
