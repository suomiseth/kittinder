class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :photo_url
      t.string :color
      t.text :blurb
      t.integer :owner_id
      t.string :sex 
      t.string :uid
      t.string :provider

      t.timestamps null: false
    end
  end
end
