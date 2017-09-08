class AddImagesToAgents < ActiveRecord::Migration[5.0]
  def change
    add_column :agents, :image, :string
  end
end
