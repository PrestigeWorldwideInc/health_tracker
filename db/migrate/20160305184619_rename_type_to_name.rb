class RenameTypeToName < ActiveRecord::Migration
  def change
    rename_column :exercise_types, :type, :name
  end
end
