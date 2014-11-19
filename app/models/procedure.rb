class Procedure < ActiveRecord::Base
  belongs_to :order, inverse_of: :procedures
end
