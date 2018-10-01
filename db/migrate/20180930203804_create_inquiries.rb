class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.integer :InquiryId
      t.integer :UserId
      t.string :Subject
      t.text :MessageContent
      t.references :househunter
      t.references :house
      t.timestamps
    end
  end
end
