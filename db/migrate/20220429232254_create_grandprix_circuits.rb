class CreateGrandprixCircuits < ActiveRecord::Migration[6.1]
  def change
    create_table :grandprix_circuits do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
