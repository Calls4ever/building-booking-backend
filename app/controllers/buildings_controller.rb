class BuildingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        buildings = Building.all
        render json: buildings, include: :bookings
    end
end
