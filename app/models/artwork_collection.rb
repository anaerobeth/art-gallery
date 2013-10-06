class ArtworkCollection < ActiveRecord::Base

  validates_presence_of :artwork
  validates_presence_of :collection

  belongs_to :artwork
  belongs_to :collection
end
