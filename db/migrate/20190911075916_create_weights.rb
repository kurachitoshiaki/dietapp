class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.float :weight
      t.bigint :profile_id
      t.timestamps
    end
  end
end
