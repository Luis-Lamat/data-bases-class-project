class Location < ActiveRecord::Base
  belongs_to :client, inverse_of: :location
	validates :street, presence: true
	validates :street_number, presence: true
	validates :suburb, presence: true
	validates :postal_code, presence: true
end
