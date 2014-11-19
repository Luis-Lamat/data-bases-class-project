class SparePart < ActiveRecord::Base
  belongs_to :procedure, inverse_of: :spare_parts

	validates :name, presence: true
	validates :provider, presence: true
	validates :cost, presence: true
	validates :quantity, presence: true
end
