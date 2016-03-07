class AddExertionToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :exertion, :string
  end
end
