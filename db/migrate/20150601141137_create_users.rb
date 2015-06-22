class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :printsitename
      t.string :printsitecode
      t.string :password

      t.timestamps null: false
    end
  end
end
