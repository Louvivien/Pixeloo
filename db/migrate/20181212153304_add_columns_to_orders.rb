class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :start_date, :datetime
    add_column :orders, :nb_day, :integer, null: false
    add_column :orders, :description, :string
    add_column :orders, :phone, :integer
    add_column :orders, :order_price, :integer
  end
end
