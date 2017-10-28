json.extract! committee, :id, :propublica_id, :name, :chamber, :url, :created_at, :updated_at
json.url committee_url(committee, format: :json)
