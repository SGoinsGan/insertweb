class CreateInsertPsresponses < ActiveRecord::Migration
  def change
    create_table :insert_psresponses do |t|
      t.integer :lookupid
      t.integer :insertid
      t.date :receiveddate
      t.integer :conditionid
      t.integer :quantityrec
      t.text :receivednote
      t.string :receivedby
      t.string :updatedby

      t.timestamps null: false
    end
  end
end
