class AddInquirytoHouseHunter < ActiveRecord::Migration[5.1]
  def change
    add_reference :inquiries, :househunter, foreign_key: true
  end
end
