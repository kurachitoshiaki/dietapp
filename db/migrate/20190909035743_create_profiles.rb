class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :text
      t.string :sex
      t.integer :age
      t.float :new_height
      t.float :new_weight
      t.float :new_goal
      t.float :new_BMI
      t.bigint :user_id
      t.timestamps
    end
  end
end
