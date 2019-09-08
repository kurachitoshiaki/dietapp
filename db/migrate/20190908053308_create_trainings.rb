class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name
      t.integer :MET
      t.integer :time
      t.integer :kcal
    end
  end
end
