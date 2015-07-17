class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :actor_id
      t.integer :receiver_id
      t.boolean :match_type
    end
  end
end
