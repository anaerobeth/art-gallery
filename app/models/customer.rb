class Customer < ActiveRecord::Base
   validates_presence_of :first_name
  validates_presence_of :last_name

  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_numericality_of :phone_number

  has_many :artworks,
    through: :artwork_customer

  has_many :collection,
  through: :customer_collection


end
