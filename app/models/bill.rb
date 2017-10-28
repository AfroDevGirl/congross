class Bill < ApplicationRecord
    has_many :votes
    has_many :amendments
    has_and_belongs_to_many :representatives
end
