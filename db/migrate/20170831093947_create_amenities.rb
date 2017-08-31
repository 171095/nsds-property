class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.boolean :indoor
      t.boolean :outdoor
      t.string :name
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
