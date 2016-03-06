class AddAgeToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :age, :integer
  end
end
