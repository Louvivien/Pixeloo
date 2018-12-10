class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :user_id, :owner_id
    rename_column :orders, :user_id, :customer_id
  end
end
