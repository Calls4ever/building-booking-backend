class Building < ApplicationRecord
    belongs_to :owner
    belongs_to :user
    has_many :bookings
end
