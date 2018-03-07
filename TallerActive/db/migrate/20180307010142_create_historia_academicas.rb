class CreateHistoriaAcademicas < ActiveRecord::Migration[5.1]
  def change
    create_table :historia_academicas do |t|
      t.string :planEstudio
      t.string :papa
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
