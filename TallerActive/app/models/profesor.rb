class Profesor < ApplicationRecord
  belongs_to :Materia
  has_many :estudiante
  has_many :grupo
end
