class FiscalDatum < ActiveRecord::Base
  belongs_to :location, inverse_of: :fiscal_data

	validates :RFC, presence: true
	validates :entity_name, presence: true
	validates :date_of_birth, presence: true

end
