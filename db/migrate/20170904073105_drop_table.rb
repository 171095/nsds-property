class DropTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :agents
  end
end
