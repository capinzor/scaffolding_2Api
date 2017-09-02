class CreateLibros < ActiveRecord::Migration[5.1]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :autor
      t.string :tema
      t.string :isbn

      t.timestamps
    end
  end
end
