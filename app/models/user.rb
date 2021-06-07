class User < ApplicationRecord
    has_many :owners, through: :buildings
    has_many :bookings
end
