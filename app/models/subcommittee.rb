class Subcommittee < ApplicationRecord
    belongs_to :committees
    has_and_belongs_to_many :representatives
end
