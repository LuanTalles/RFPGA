class AddSwitchsButtonsLedsSevensegsToFpgas < ActiveRecord::Migration[5.2]
  def change
    add_column :fpgas, :switchs, :integer
    add_column :fpgas, :buttons, :integer
    add_column :fpgas, :leds, :integer
    add_column :fpgas, :sevensegs, :integer
  end
end
