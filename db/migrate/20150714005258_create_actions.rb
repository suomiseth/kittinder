class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :actor_id
      t.integer :receiver_id
      t.boolean :action_type
    end
  end
end
