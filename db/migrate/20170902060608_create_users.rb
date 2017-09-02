class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :email
      t.integer :cedula
      t.integer :telefono

      t.timestamps
    end
  end
end
