class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.decimal :calories_burned_per_minute
      t.decimal :duration
      t.integer :exercise_type_id

      t.timestamps null: false
    end
  end
end
