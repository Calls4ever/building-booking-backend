class User < ApplicationRecord
    has_many :buildings
    has_many :owners, through: :buildings
    has_many :bookings, through: :buildings
end
