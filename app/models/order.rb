class Order < ApplicationRecord
  belongs_to :cart
  enum status: [:en_attente, :accepté, :refusé]

  validates :email, presence: true
  validates :status, inclusion: statuses.keys


end
