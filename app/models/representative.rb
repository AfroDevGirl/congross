class Representative < ApplicationRecord
    has_and_belongs_to_many :bills
    has_and_belongs_to_many :votes
    has_and_belongs_to_many :committees
    has_and_belongs_to_many :subcommittees
end
