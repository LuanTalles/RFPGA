class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :admin, default: 0, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
