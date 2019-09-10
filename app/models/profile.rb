class Profile < ApplicationRecord
    belongs_to :user
    has_many :weight_news
    has_many :trainings
end
