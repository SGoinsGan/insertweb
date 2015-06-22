class CreateInsertPspostresponses < ActiveRecord::Migration
  def change
    create_table :insert_pspostresponses do |t|
      t.integer :insertid
      t.integer :leftover
      t.string :postnote
      t.string :updatedby
      t.integer :latetrucks

      t.timestamps null: false
    end
  end
end
