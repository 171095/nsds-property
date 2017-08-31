class Amenity < ApplicationRecord
  belongs_to :property, optional: true
end
