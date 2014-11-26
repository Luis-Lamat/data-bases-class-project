class Client < ActiveRecord::Base

  has_many :vehicles, inverse_of: :client
  belongs_to :location, inverse_of: :client

	validates :first_name, presence: true
	validates :last_name, presence: true

  def full_name
    first_name + " " + last_name + " - Vehiculos: " + vehicles.count.to_s 
  end

end
