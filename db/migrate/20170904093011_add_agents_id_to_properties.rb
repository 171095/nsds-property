class AddAgentsIdToProperties < ActiveRecord::Migration[5.0]
  def change
    add_reference :properties, :agent, foreign_key: true
  end
end
