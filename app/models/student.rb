class Student < ApplicationRecord
  has_many :project_student 
  has_many :projects, through: :project_student
  validates :first_name, :last_name,:address,:email,:dob, presence: true

end
