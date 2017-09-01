class RemoveColumnFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :image, :string
  end
end
