class Location < ActiveRecord::Base
  has_one :client, inverse_of: :location
  has_one :fiscal_data, inverse_of: :location
  
	validates :street, presence: true
	validates :street_number, presence: true
	validates :suburb, presence: true
	validates :postal_code, presence: true
end
