class Project < ApplicationRecord
  has_many :project_student
  has_many :students, through: :project_student
end
