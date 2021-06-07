class ChangeTypeToDateAtBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :start_time, :date
    change_column :bookings, :end_time, :date
    
  end
end
