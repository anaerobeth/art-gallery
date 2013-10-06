class CustomerCollection < ActiveRecord::Base

  validates_presence_of :customer
  validates_presence_of :collection

  belongs_to :customer
  belongs_to :collection
end
