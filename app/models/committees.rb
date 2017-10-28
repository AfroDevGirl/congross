class Committees < ApplicationRecord
    has_and_belongs_to_many :representatives
    has_many :subcommittees
end
