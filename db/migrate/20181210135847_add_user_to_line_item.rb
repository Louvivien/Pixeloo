class AddUserToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :user, foreign_key: true
  end
end
