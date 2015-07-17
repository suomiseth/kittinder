class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :photo_url
      t.string :saying

      t.timestamps null: false
    end
  end
end
