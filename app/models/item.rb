class Item < ApplicationRecord
	
  has_many :line_items, dependent: :nullify
  
  has_one_attached :item_image
  has_and_belongs_to_many :orders

  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  validates :description, presence: {
    message: "La description doit être renseigné."
  }

  validates :price, presence: {
    message: "Le prix doit être renseigné."
  }

  validates :image_url, presence: {
    message: "L'image doit être renseigné."
  }


end
