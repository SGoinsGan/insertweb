class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :pub
      t.date :fromdate
      t.date :todate

      t.timestamps null: false
    end
  end
end
