class AddDatesAndPriceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :entry_date, :date
    add_column :bookings, :exit_date, :date
    add_column :bookings, :price, :float
  end
end
