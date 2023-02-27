class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :arrival
      t.date :departure
      t.integer :room
      t.string :guest
      t.integer :hotel_id
      t.integer :user_id
      
      

      t.timestamps
    end
  end
end
