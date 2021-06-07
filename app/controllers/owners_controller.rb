class OwnersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        owners =Owner.all
        render json: owners.to_json(:include => {:buildings=> {:include =>:bookings}})
    end
    def create
        owner = Owner.create(owner_params)
        render json: owner.to_json(:include => {:buildings=> {:include => :bookings}})
    end
    def show
        owner =Owner.find_by(username: params[:id])
        render json: owner.to_json(:include => {:buildings=> {:include => :bookings}})
    end
    def update
        owner=Owner.find(params[:id])
        owner.update(user_params)
        render json: owner.to_json(:include => {:buildings=> {:include => :bookings}})
    end

    private
    def owner_params
        params.require(:owner).permit(:name,:username,:password)
    end
end
