class Estudiante < ApplicationRecord
    has_many :materia
    has_many :calificacion
    has_many :profesor
    has_many :historiaAcademica
end
