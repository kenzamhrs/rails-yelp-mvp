class ChangeColumnToRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone, :string
    rename_column :restaurants, :phone, :phone_number
  end
end
