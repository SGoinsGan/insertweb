class ChangeDataTypeForInserts < ActiveRecord::Migration
  def self.up
   change_column :inserts, :width, :decimal, :precision => 4, :scale => 2, null: true
   change_column :inserts, :height, :decimal, :precision => 4, :scale => 2, null: true
   change_column :inserts, :adlinage, :decimal, :precision => 5, :scale => 2, null: true
   change_column :inserts, :erop, :decimal, :precision => 5, :scale => 2, null: true
   change_column :inserts, :weight, :decimal, :precision => 5, :scale => 2, null: true
   change_column :inserts, :editorialspace, :decimal, :precision => 5, :scale => 3, null: true
  end
  def self.down
   change_column :inserts, :width, :float
   change_column :inserts, :height, :integer
   change_column :inserts, :adlinage, :integer
   change_column :inserts, :erop, :integer
   change_column :inserts, :weight, :integer
   change_column :inserts, :editorialspace, :integer
  end
end


