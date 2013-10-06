class Collection < ActiveRecord::Base
  validates_presence_of :name

  has_many :artworks,
    through: :artwork_collection,
    inverse_of: :collection

  has_many :customers,
    through: :customer_collection,
    inverse_of: :collection

end
