class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  enum status: [:en_attente, :accepté, :refusé]

  belongs_to :customer, class_name: 'User'
  has_one :owner, class_name: 'User', through: :cart

  validates :email, presence: true
  validates :status, inclusion: statuses.keys


end
