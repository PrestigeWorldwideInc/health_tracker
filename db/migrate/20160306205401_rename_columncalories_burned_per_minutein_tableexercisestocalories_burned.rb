class RenameColumncaloriesBurnedPerMinuteinTableexercisestocaloriesBurned < ActiveRecord::Migration
  def change
    rename_column :exercises, :calories_burned_per_minute, :calories_burned
  end
end
