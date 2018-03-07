class CreateCalificacions < ActiveRecord::Migration[5.1]
  def change
    create_table :calificacions do |t|
      t.string :corte1
      t.string :corte2
      t.string :corte3
      t.string :notafinal
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
