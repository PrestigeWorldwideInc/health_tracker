class RenameLsbToLbs < ActiveRecord::Migration
  def change
    rename_column :weights, :lsb, :lbs
  end
end
