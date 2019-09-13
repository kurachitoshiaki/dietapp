class Training < ApplicationRecord
    belongs_to :profile
    has_many :menus
end
