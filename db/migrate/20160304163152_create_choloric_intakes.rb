class CreateCholoricIntakes < ActiveRecord::Migration
  def change
    create_table :choloric_intakes do |t|
      t.decimal :calories
      t.date :date

      t.timestamps null: false
    end
  end
end
