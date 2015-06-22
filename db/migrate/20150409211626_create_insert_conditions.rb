class CreateInsertConditions < ActiveRecord::Migration
  def change
    create_table :insert_conditions do |t|
      t.string :conditionname
      t.string :responsecode

      t.timestamps null: false
    end
  end
end
