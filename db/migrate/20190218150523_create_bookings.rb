class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :arrival_time
      t.date :departure_time
      t.string :place

      t.timestamps
    end
  end
end
