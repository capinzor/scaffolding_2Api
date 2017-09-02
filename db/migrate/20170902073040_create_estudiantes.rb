class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.integer :codigo
      t.string :carrera
      t.string :sede
      t.integer :edad

      t.timestamps
    end
  end
end
