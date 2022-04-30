class AddGrandprixIdandCircuitIDtoGrandPrixCircuits < ActiveRecord::Migration[6.1]
  def change
    add_column :grandprix_circuits, :grandprix_id, :integer
    add_column :grandprix_circuits, :circuit_id, :integer
  end
end
