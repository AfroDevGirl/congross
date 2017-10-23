class CreateVoteParties < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_parties do |t|
      t.string :party_name
      t.integer :yes
      t.integer :no
      t.integer :present
      t.integer :not_voting
      t.string :majority_position

      t.timestamps
    end
  end
end
