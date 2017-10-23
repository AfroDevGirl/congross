class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :propublica_id #bill_id from propublica API
      t.string :bill_type
      t.string :number
      t.string :api_url
      t.string :title
      t.string :sponsor_id
      t.string :sponsor_title
      t.string :sponsor_name
      t.string :sponsor_state
      t.string :sponsor_party
      t.string :sponsor_uri
      t.integer :cosponsors
      t.string :gpo_pdf_uri
      t.string :congressdotgov_url
      t.string :govtrack_url
      t.string :introduced_date
      t.string :active
      t.string :house_passage #Date as string YYYY-MM-DD 
      t.string :senate_passage #Date as string
      t.string :enacted #Date as string
      t.string :vetoed
      t.string :committees
      t.string :committee_codes, array: true #ARRAY
      t.string :subcommittee_codes, array: true #ARRAY
      t.string :primary_subject 
      #Primary Subject Ex. "Public Lands and Natural Resources", "Science, Technology, Communications"
      #Will definitely need to write some specific methods to ID keywords
      t.string :summary
      t.string :summary_short
      t.string :latest_major_action_date
      t.string :latest_major_action
      t.string :latest_action

      t.timestamps
    end
  end
end
