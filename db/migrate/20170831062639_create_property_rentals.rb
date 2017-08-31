class CreatePropertyRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :property_rentals do |t|
      t.string :name
      t.text :address_line1
      t.text :address_line2
      t.string :property_type
      t.integer :property_size
      t.text :description
      t.integer :rental_price

      t.timestamps
    end
  end
end
