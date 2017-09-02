class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.integer :modelo
      t.string :color
      t.integer :pasajeros

      t.timestamps
    end
  end
end
