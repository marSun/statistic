class ChangeOffer < ActiveRecord::Migration
  def change
    remove_column :offers, :port
    add_column :offers, :port_id, :integer
  end
end
