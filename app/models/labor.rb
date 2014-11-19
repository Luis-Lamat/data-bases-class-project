class Labor < ActiveRecord::Base
  belongs_to :employee, inverse_of: :labors
  belongs_to :procedure, inverse_of: :labors

	validates :cost, presence: true
	validates :estimated_time, presence: true
end
