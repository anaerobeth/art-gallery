class Artwork < ActiveRecord::Base
  validates_presence_of :artist
  validates_presence_of :sale_price
  validates_numericality_of :sale_price,
    greater_than_or_equal_to: 0

  validates_presence_of :category

  belongs_to :category
  belongs_to :artist

  has_many :collections,
    through: :artwork_collection

end
