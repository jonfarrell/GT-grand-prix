class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.integer :grandprix_circuit_id
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :p5
      t.integer :p6
      t.integer :p7
      t.integer :p8
      t.integer :p9
      t.integer :p10
      t.integer :p11
      t.integer :p12
      t.integer :p13
      t.integer :p14
      t.integer :p15
      t.integer :p16
      t.integer :p17
      t.integer :p18
      t.integer :p19
      t.integer :p20

      t.timestamps
    end
  end
end
