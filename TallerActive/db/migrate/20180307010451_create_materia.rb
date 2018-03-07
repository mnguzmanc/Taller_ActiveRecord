class CreateMateria < ActiveRecord::Migration[5.1]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.string :creditos
      t.string :descripcion
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
