class Profile < ApplicationRecord
    belongs_to :user
    has_many :weights
    has_many :trainings
    has_one_attached :image
end
