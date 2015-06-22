class InsertPspostresponse < ActiveRecord::Base
has_many :InsertPsresponses
has_many :Inserts, through: :InsertPsresponses

#add_index :InsertPspostresponses, :lookupid, :insertid

end
