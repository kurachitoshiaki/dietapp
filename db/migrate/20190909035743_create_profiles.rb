class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :text
      t.string :image
      t.string :sex
      t.integer :age
      t.float :height
      t.float :weight
      t.float :goal_weight
      t.float :BMI
      t.bigint :user_id
    end
  end
end
