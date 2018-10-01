class AddHouseToRealtor < ActiveRecord::Migration[5.1]
  def change
      add_reference :houses, :realtor, foreign_key: true

  end
end
