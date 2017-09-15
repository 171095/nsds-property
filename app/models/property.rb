class Property < ApplicationRecord
  require 'csv'
  validates :name, :address_line1, :address_line2, :property_type, :rental_price, presence: true
  has_many :amenities
  has_many :images, as: :imageable
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :amenities, reject_if: :all_blank, allow_destroy: true

  belongs_to :agent, optional: true

  belongs_to :state

  belongs_to :city

  def is_outdoor?
    self.amenities.where(outdoor: true).size
  end

  def is_indoor?
    self.amenities.where(indoor: true).size
  end

  geocoded_by :full_address  

  after_validation :geocode  
  

  def full_address
    "#{self.state.try(:name)},  #{self.city.try(:name)}, #{self.zipcode}"
  end


end
