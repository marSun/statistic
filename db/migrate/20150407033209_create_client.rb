class CreateClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :agent_id
      t.string :name
    end
  end
end
