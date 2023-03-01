class AddUserToAstros < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user, index: true
    add_reference :bookings, :astro, index: true
  end
end
