class Vote < ApplicationRecord
    #has_many :vote_parties
    belongs_to :bill
    has_and_belongs_to_many :representatives
end
