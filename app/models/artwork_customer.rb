class ArtworkCustomer < ActiveRecord::Base
  validates_numericality_of :customer_id,
      greater_than_or_equal_to: 1
  validates_numericality_of :artwork_id,
      greater_than_or_equal_to: 1


end
