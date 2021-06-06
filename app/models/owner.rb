class Owner < ApplicationRecord
    has_many :buildings
    has_many :bookings, through: :buildings
    has_many :users, through: :buildings
end
