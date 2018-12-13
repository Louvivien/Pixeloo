class Item < ApplicationRecord
  has_many :line_items, dependent: :nullify
  belongs_to :user


  has_one_attached :item_image
  has_and_belongs_to_many :orders
  has_many :images
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

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end

  def self.search(search)
    if search
     
      @items =  Item.where("lower(title) LIKE '%#{search.downcase}%' OR lower(description) LIKE '%#{search.downcase}%'") 
    else
      puts "recherche vide donc puts all"
      @items = Item.all
    end
   
  end
end
