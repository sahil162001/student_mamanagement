class ChangeColumnTypeOfStudent < ActiveRecord::Migration[7.0]
  rename_column :students, :last_nanme,:last_name
end
