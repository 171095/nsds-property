class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.text :address
      t.string :contact
      t.string :image

      t.timestamps
    end
  end
end
