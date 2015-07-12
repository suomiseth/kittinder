class CreateRejections < ActiveRecord::Migration
  def change
    create_table :rejections do |t|
      t.integer :rejector_id
      t.integer :rejected_id

      t.timestamps null: false
    end
  end
end
