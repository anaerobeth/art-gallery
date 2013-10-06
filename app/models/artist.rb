class Artist < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name

  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_numericality_of :phone

  has_many :artworks,
    inverse_of: :artist

  has_many :collections,
    through: :artwork_collections,
    inverse_of: :artist

  has_many :customers,
    through: :artwork_customer,
    inverse_of: :artist
end
