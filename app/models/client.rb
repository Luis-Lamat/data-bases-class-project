class Client < ActiveRecord::Base

  has_many :vehicles, inverse_of: :client
  belongs_to :location, inverse_of: :client

<<<<<<< HEAD
  validates :first_name, presence: true
  validates :last_name, presence: true
=======
	validates :first_name, presence: true
	validates :last_name, presence: true

  def full_name
    first_name + " " + last_name + " - Vehiculos: " + vehicles.count.to_s 
  end

>>>>>>> b806658b78b30bc306ccdf3f4ac455494f7e4012
end
