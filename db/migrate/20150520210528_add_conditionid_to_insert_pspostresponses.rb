class AddConditionidToInsertPspostresponses < ActiveRecord::Migration
  def change
    add_column :insert_pspostresponses, :conditionid, :integer
  end
end
