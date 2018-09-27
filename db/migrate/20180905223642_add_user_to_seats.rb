class AddUserToSeats < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :user, foreign_key: true
  end
end
