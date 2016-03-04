class CreateStepCounts < ActiveRecord::Migration
  def change
    create_table :step_counts do |t|
      t.integer :steps_taken
      t.date :date

      t.timestamps null: false
    end
  end
end
