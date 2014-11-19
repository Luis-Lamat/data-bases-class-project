class Workshop < ActiveRecord::Base
<<<<<<< HEAD
	validates :name, presence: true
=======
  has_one :order_vehicle_workshop, inverse_of: :workshop
>>>>>>> 83a767a18e28dcca65f1f479d24b728b393d6c23
end
