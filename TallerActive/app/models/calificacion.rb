class Calificacion < ApplicationRecord
  belongs_to :estudiante
  has_one :materia
end
