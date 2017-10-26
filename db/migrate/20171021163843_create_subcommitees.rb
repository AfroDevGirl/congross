 class CreateSubcommitees < ActiveRecord::Migration[5.1]
  def change
    create_table :subcommitees do |t|
      t.string :propublica_id
      t.string :name
      t.string :propublica_uri
      t.string :congress
      t.string :chamber
      t.string :chair_id
      t.string :chair_party
      t.string :chair_state
      t.string :ranking_member_id

      t.timestamps
    end
  end
end
