class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :fob
      t.float :cfr
      t.float :transport_price
      t.integer :port_id
      t.integer :goods_id

      t.timestamps
    end
  end
end
