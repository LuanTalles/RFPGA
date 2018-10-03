class AddLastUserSatToSeat < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :last_user_sat, references: :users
  end
end
