class ItemList < ApplicationRecord
  belongs_to :user
  
  validates :list_name, presence: true, length: { maximum: 50 }

  mount_uploader :image, ItemListImgUploader

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :items
end
