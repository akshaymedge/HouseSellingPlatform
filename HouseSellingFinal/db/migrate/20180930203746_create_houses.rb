class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.integer :houseId
      t.integer :companyId
      t.string :location
      t.integer :squarefootage
      t.integer :yearbuilt
      t.string :style
      t.integer :listprice
      t.integer :nooffloors
      t.boolean :basement
      t.string :currentHouseOwner
      t.string :contactInfo
      t.string :potentialBuyers
      t.references :realestatecompany
      t.references :realtor
      t.timestamps
    end
  end
end
