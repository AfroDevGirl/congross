class CreateAmendments < ActiveRecord::Migration[5.1]
  def change
    create_table :amendments do |t|
      t.string :title
      t.string :amendment_number
      t.string :sponsor
      t.string :sponsor_id
      t.string :sponsor_title
      t.string :sponsor_state
      t.string :sponsor_party
      t.string :introduced_date
      t.string :latest_major_action_date
      t.string :latest_major_action
      t.string :congressdotgov_url

      t.timestamps
    end
  end
end
