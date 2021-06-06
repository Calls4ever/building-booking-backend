class Booking < ApplicationRecord
    belongs_to :building
    belongs_to :user
    belongs_to :owner
end
