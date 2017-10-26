class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :congress_num
      t.string :chamber
      t.string :description
      t.string :date
      t.string :time
      t.string :session
      t.string :rollcall
      t.string :result
      t.string :vote_type
      t.string :question
      t.string :source
      t.string :url
      t.string :vote_uri

      t.timestamps
    end
  end
end
