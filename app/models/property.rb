class Property < ApplicationRecord
  validates :name, :address_line1, :address_line2, :property_type, :rental_price, presence: true
  has_many :amenities
  has_many :images, as: :imageable
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :amenities, reject_if: :all_blank, allow_destroy: true


end
