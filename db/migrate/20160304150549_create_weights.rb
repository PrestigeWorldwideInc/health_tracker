class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :lbs
      t.date :date

      t.timestamps null: false
    end
  end
end
