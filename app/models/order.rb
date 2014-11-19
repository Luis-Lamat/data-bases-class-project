class Order < ActiveRecord::Base
	validates :entry_date, presence: true
	validates :expenses, presence: true
	validates :tax, presence: true
	validates :total_cost, presence: true
	validates :promised_date, presence: true
	validates :created_at, presence: true
	validates :update_at, presence: true
end
