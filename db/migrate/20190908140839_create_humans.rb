class CreateHumans < ActiveRecord::Migration[5.2]
  def change
    create_table :humans do |t|
      t.integer :height
      t.integer :weight
      t.integer :BMI
    end
  end
end
