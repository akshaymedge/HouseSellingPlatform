class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :role
      t.integer :companyid
      t.string :phone
      t.string :contactmethod

      t.timestamps
    end
  end
end
