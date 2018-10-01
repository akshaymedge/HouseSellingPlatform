class CreateRealestatecompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :realestatecompanies do |t|
      t.integer :companyid
      t.string :name
      t.string :website
      t.string :address
      t.string :size
      t.integer :founded
      t.string :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
