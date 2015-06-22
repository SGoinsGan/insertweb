class AddLookupIdToInsertPspostresponse < ActiveRecord::Migration
  def change
    add_column :insert_pspostresponses, :lookupid, :integer, :after => :id
  end
end
