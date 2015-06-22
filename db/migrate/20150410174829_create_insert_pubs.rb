class CreateInsertPubs < ActiveRecord::Migration
  def change
    create_table :insert_pubs do |t|
      t.string :pub_code
      t.string :pub_name
      t.string :ams_pub_code
      t.string :cci_product
      t.string :cci_zone
      t.string :cci_edition
      t.string :text_active
      t.integer :page_format_id
      t.integer :active
      t.string :create_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
