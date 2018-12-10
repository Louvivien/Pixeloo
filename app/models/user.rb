class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise   :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  has_many :orders
  has_one :cart
  has_many :line_items

  has_many :items_available, class_name: 'Item'
  has_many :orders_received, class_name: 'Order',
         through: :items_available, source: :orders
has_many :orders_made, class_name: 'Order'
has_many :items_rented, class_name: 'Item',
         through: :orders_made, source: :item


end
