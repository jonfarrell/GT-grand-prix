class RemoveNameAndDescFromGrandPrixCircuits < ActiveRecord::Migration[6.1]
  def change
    remove_column :grandprix_circuits, :name
    remove_column :grandprix_circuits, :description
  end
end
