class CreateInsertPrintmethods < ActiveRecord::Migration
  def change
    create_table :insert_printmethods do |t|
      t.string; :methodname

      t.timestamps null: false
    end
  end
end
