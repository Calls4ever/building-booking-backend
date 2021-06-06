class UsersController < ApplicationController
    def index
    render json: User.all
    end
    def create
        user = User.create(user_params)
        render json: user, include: :buildings
    end
    def show
        user=User.find(params[:id])
        render json: user, include:[:buildings, :bookings]
    end

    private
    def user_params
        params.require(:comment).permit(:username, :name, :password)
    end
end
