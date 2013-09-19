class Category < ActiveRecord::Base
VALID_CATEGORIES = [ "Photography",
                      "Painting",
                      "Sculpture"]

validates_presence_of :name
validates_inclusion_of :name, in: VALID_CATEGORIES

has_many :artwork
end
