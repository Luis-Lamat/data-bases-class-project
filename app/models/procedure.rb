class Procedure < ActiveRecord::Base
  belongs_to :order, inverse_of: :procedures
  has_many :labors, inverse_of: :procedure
end
