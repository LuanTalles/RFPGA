class CreateFpgas < ActiveRecord::Migration[5.2]
  def change
    create_table :fpgas do |t|
      t.string :family
      t.string :model
      t.string :name
      t.text :brief

      t.timestamps
    end
  end
end
