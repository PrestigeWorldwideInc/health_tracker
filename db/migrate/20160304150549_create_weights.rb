class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :lsb
      t.date :date

      t.timestamps null: false
    end
  end
end
