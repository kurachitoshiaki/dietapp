class CreateWeightNews < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_news do |t|
      t.float :updata_weight
      t.bigint :user_id
      t.bigint :profile_id
      t.timestamps
    end
  end
end
