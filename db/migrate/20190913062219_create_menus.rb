class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.float :total_met
      t.integer :total_time
      t.integer :total_kcal
      t.bigint :training_id
      t.timestamps
    end
  end
end
