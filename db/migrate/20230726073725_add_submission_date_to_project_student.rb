class AddSubmissionDateToProjectStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :project_students, :submission_date, :date
  end
end
