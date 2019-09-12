class Profile < ApplicationRecord
    belongs_to :user
    has_many :weights
    has_many :trainings
end
