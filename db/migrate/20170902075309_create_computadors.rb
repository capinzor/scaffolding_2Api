class CreateComputadors < ActiveRecord::Migration[5.1]
  def change
    create_table :computadors do |t|
      t.string :marca
      t.string :procesador
      t.integer :gigas_de_ram
      t.ineger :gigas_de_capacidad

      t.timestamps
    end
  end
end
