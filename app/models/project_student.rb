class ProjectStudent < ApplicationRecord
  belongs_to :student
  belongs_to :project
end
