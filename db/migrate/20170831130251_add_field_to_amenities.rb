class AddFieldToAmenities < ActiveRecord::Migration[5.0]
  def change
    add_column :amenities, :amenity_icon, :string
  end
end
