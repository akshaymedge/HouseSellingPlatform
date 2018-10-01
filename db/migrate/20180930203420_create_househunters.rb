class CreateHousehunters < ActiveRecord::Migration[5.1]
  def change
    create_table :househunters do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :phone
      t.string :contactmethod

      t.timestamps
    end
  end
end
