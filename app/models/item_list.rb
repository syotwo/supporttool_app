class ItemList < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :list_name, presence: true, length: { maximum: 50 }
  validates :list_item_type, presence: true, length: { maximum: 50 }

  mount_uploader :image, ItemListImgUploader

  has_many :items, dependent: :destroy  
  # has_many :users, through: :favorites
end
