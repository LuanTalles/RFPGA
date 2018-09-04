class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :name
      t.references :fpga, index: true, foreign_key: true
      t.timestamps
    end
  end
end
