class CreateRepresentatives < ActiveRecord::Migration[5.1]
  def change
    create_table :representatives do |t|
      t.string :propublica_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :propublica_uri
      t.string :date_of_birth
      t.string :party
      t.string :leadership_role
      t.string :twitter_account
      t.string :facebook_account
      t.string :youtube_account
      t.string :fec_candidate_id
      t.string :website_url
      t.boolean :in_office
      t.float :dw_nominate
      t.string :seniority
      t.string :next_election
      t.integer :total_votes
      t.integer :missed_votes
      t.integer :total_present
      t.string :office_address
      t.string :office_phone
      t.string :office_fax
      t.string :state
      t.string :senate_class
      t.string :district
      t.boolean :at_large
      t.string :state_rank
      t.string :lis_id
      t.float :missed_votes_pct
      t.float :votes_with_party_pct

      t.timestamps
    end
  end
end
