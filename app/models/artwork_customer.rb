class ArtworkCustomer < ActiveRecord::Base
  validates_presence_of :artwork
  validates_presence_of :customer
  belongs_to :artwork
  belongs_to :customer

end
