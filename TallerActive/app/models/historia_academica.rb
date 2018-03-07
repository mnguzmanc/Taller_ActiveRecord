class HistoriaAcademica < ApplicationRecord
  belongs_to :estudiante
  has_many :materia
  has_many :calificacion
end
