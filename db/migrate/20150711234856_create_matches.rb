class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :first_match_id
      t.integer :second_match_id

      t.timestamps null: false
    end
  end
end
