class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        users =User.all
        render json: users, include: :bookings
    end
    def create
        user = User.create(user_params)
        render json: user, include: :bookings
    end
    def show
        user=User.find_by(username: params[:id])
        render json: user, include: :bookings
    end
    def update
        puts 'updating user.....'
        user=User.find(params[:id])
        user.update(user_params)
        render json: user, include: :bookings
        puts 'updated'
    end

    private
    def user_params
        params.require(:user).permit(:name,:username,:password, :piriority_point)
    end
end
