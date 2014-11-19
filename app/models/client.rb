class Client < ActiveRecord::Base

  has_one :vehicle, inverse_of: :client
  has_one :location, inverse_of: :client

	validates :first_name, presence: true
	validates :last_name, presence: true
end
