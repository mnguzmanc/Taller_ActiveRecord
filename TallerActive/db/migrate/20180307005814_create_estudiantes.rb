class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.date :fechaNacimiento
      t.string :tutor

      t.timestamps
    end
  end
end
