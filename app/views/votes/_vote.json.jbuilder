json.extract! vote, :id, :chamber, :description, :date, :session, :rollcall, :created_at, :updated_at
json.url vote_url(vote, format: :json)
