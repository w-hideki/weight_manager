class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.float :weight ,null:false
      t.integer :breakfast
      t.integer :lunch
      t.integer :dinner
      t.integer :snack
      t.text :memo
      t.references :user ,foreign_key: true
      t.datetime :start_time
      t.timestamps
    end
  end
end
