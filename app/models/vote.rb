class Vote < ApplicationRecord
    has_many :vote_parties
    belongs_to :bill
end
