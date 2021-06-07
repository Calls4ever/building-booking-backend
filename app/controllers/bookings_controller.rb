class BookingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
    bookings =Booking.all
    render json: bookings
    end
    def create
        booking = Booking.create(booking_params)
        render json: booking
    end
    def show
        booking =Booking.find(params[:id])
        render json: booking
    end
    def update
        booking=Booking.find(params[:id])
        booking.update(booking_params)
        render json: booking
    end
    private 
    def booking_params
        params.require(:booking).permit(:start_time, :end_time, :confirmed, :user_id, :building_id)
    end
end
