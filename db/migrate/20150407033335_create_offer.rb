class CreateOffer < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :agent_id
      t.integer :client_id
      t.integer :goods_id
      t.float  :price
      t.string :port
      t.datetime :date

      t.timestamps
    end
  end
end
