class AddTimeThatUserSatToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :time_that_user_sat, :datetime
  end
end
