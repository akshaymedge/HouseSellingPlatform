class CreateRealtors < ActiveRecord::Migration[5.1]
  def change
    create_table :realtors do |t|
      t.string :email
      t.string :name
      t.string :password
      t.integer :companyid
      t.references :realestatecompany
      t.timestamps
    end
  end
end
