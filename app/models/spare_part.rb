class SparePart < ActiveRecord::Base
	validates :name, presence: true
	validates :provider, presence: true
	validates :cost, presence: true
	validates :quantity, presence: true
end
