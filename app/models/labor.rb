class Labor < ActiveRecord::Base
	validates :cost, presence: true
	validates :estimated_time, presence: true
end
