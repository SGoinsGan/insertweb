class Insert < ActiveRecord::Base
has_many :insert_psresponses
has_many :insert_pspostresponses, through: :insert_psresponses
end
