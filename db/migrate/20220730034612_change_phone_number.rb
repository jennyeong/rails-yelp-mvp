class ChangePhoneNumber < ActiveRecord::Migration[7.0]
  change_column :restaurants, :phone_number, :string
end
