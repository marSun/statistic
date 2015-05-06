class CreateTransportOffer < ActiveRecord::Migration
  def change
    create_table :transport_offers do |t|
      t.integer :company_id
      t.integer :port_id
      t.integer :goods_id
      t.string  :cabinet
      t.float   :price
      t.datetime :deliver_goods_at

      t.timestamps
    end
  end
end
