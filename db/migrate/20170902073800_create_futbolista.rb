class CreateFutbolista < ActiveRecord::Migration[5.1]
  def change
    create_table :futbolista do |t|
      t.string :nombre
      t.string :apellido
      t.string :equipo
      t.string :posicion
      t.integer :edad
      t.float :estatura

      t.timestamps
    end
  end
end
