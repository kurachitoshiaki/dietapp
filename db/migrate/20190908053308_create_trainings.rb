class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name
      t.float :MET
      t.integer :time
      t.integer :kcal
      t.bigint :profile_id
      t.timestamps
    end
  end
end
