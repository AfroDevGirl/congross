# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171021163843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string "propublica_id"
    t.string "bill_type"
    t.string "number"
    t.string "api_url"
    t.string "title"
    t.string "sponsor_id"
    t.string "sponsor_title"
    t.string "sponsor_name"
    t.string "sponsor_state"
    t.string "sponsor_party"
    t.string "sponsor_uri"
    t.integer "cosponsors"
    t.string "gpo_pdf_uri"
    t.string "congressdotgov_url"
    t.string "govtrack_url"
    t.string "introduced_date"
    t.string "active"
    t.string "house_passage"
    t.string "senate_passage"
    t.string "enacted"
    t.string "vetoed"
    t.string "committees"
    t.string "committee_codes", array: true
    t.string "subcommittee_codes", array: true
    t.string "primary_subject"
    t.string "summary"
    t.string "summary_short"
    t.string "latest_major_action_date"
    t.string "latest_major_action"
    t.string "latest_action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commitees", force: :cascade do |t|
    t.string "propublica_id"
    t.string "name"
    t.string "chamber"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representatives", force: :cascade do |t|
    t.string "propublica_id"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "propublica_uri"
    t.string "date_of_birth"
    t.string "party"
    t.string "leadership_role"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "fec_candidate_id"
    t.string "website_url"
    t.boolean "in_office"
    t.float "dw_nominate"
    t.string "seniority"
    t.string "next_election"
    t.integer "total_votes"
    t.integer "missed_votes"
    t.integer "total_present"
    t.string "office_address"
    t.string "office_phone"
    t.string "office_fax"
    t.string "state"
    t.string "senate_class"
    t.string "district"
    t.boolean "at_large"
    t.string "state_rank"
    t.string "lis_id"
    t.float "missed_votes_pct"
    t.float "votes_with_party_pct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcommitees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_parties", force: :cascade do |t|
    t.string "party_name"
    t.integer "yes"
    t.integer "no"
    t.integer "present"
    t.integer "not_voting"
    t.string "majority_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "congress_num"
    t.string "chamber"
    t.string "description"
    t.string "date"
    t.string "time"
    t.string "session"
    t.string "rollcall"
    t.string "result"
    t.string "vote_type"
    t.string "question"
    t.string "source"
    t.string "url"
    t.string "vote_uri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
