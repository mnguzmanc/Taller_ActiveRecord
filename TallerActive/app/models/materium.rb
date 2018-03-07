class Materium < ApplicationRecord
  belongs_to :estudiante
  has_many :grupo
end
