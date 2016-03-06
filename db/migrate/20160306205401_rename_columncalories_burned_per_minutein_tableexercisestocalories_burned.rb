class RenameColumncaloriesBurnedPerMinuteinTableexercisestocaloriesBurned < ActiveRecord::Migration
  def change
    rename_column :exercises, :calories_burned, :calories_burned
  end
end
