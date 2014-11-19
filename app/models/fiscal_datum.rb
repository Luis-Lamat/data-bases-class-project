class FiscalDatum < ActiveRecord::Base
	validates :RFC, presence: true
	validates :entity_name, presence: true
	validates :date_of_birth, presence: true

end
