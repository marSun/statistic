class CreateAgent < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :no
    end
  end
end
