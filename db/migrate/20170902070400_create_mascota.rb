class CreateMascota < ActiveRecord::Migration[5.1]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :animal
      t.string :raza
      t.integer :edad

      t.timestamps
    end
  end
end
