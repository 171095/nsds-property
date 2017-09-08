class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :state, foreign_key: true

      t.timestamps
    end
    add_column :properties, :state_id, :integer
    add_column :properties, :city_id, :integer
  end
end
