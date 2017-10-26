class CreateCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :committees do |t|
      t.string :propublica_id
      t.string :name
      t.string :chamber
      t.string :url

      t.timestamps
    end
  end
end
