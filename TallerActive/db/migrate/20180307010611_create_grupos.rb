class CreateGrupos < ActiveRecord::Migration[5.1]
  def change
    create_table :grupos do |t|
      t.date :horario
      t.string :salon
      t.string :cupos
      t.references :Materia, foreign_key: true

      t.timestamps
    end
  end
end
