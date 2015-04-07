class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goodses do |t|
      t.string :name
    end
  end
end
