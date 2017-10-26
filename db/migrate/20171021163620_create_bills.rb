class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :propublica_id
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
      t.string :house_passage
      t.string :senate_passage
      t.string :enacted
      t.string :vetoed
      t.string :committees
      t.string :committee_codes, array: true
      t.string :subcommittee_codes, array: true
      t.string :primary_subject
      t.string :summary
      t.string :summary_short
      t.string :latest_major_action_date
      t.string :latest_major_action
      t.string :latest_action
      t.string :status

      t.timestamps
    end
  end
end
