class Property < ApplicationRecord
  validates :name, :address_line1, :address_line2, :property_type, :rental_price, presence: true,
                    length: { minimum: 5 }
  has_many :amenities
end
