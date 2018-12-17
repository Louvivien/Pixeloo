class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  enum status: [:en_attente, :accepté, :refusé, :confirmé]

  validates :email, presence: true
   validates :owner_id, presence: true
  validates :status, inclusion: statuses.keys
	validates :start_date, presence: true


end
