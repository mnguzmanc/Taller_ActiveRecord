class CreateProfesors < ActiveRecord::Migration[5.1]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :departamento
      t.string :especialidad
      t.references :Materia, foreign_key: true

      t.timestamps
    end
  end
end
