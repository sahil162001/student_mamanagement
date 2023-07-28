class CreateSahils < ActiveRecord::Migration[7.0]
  def change
    create_table :sahils do |t|
      t.string :name

      t.timestamps
    end
  end
end
