class CreateDistributions < ActiveRecord::Migration
  def change
    create_table :distributions do |t|
      t.integer :lookup_id
      t.integer :level_number
      t.string :distribution_code
      t.string :description
      t.string :newspaper_name
      t.integer :parent_lookup_id
      t.string :sort
      t.string :text_active
      t.date :active_date
      t.date :inactive_date
      t.integer :pub_id
      t.integer :parent_id
      t.integer :acitve
      t.datetime :created_at
      t.datetime :updated_at
      t.string :created_by
      t.string :updated_by
      t.string :address

      t.timestamps null: false
    end
  end
end
