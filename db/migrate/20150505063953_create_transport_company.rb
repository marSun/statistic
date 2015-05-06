class CreateTransportCompany < ActiveRecord::Migration
  def change
    create_table :transport_companies do |t|
      t.string :name
    end
  end
end
