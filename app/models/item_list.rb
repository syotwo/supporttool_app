class ItemList < ApplicationRecord
  belongs_to :user
  
  # 複数カテゴリ
  has_many :item_list_category_relations
  has_many :categories, through: :item_list_category_relations
  # お気に入り
  has_many :favorites, dependent: :destroy
  # いいね
  has_many :likes, dependent: :destroy

  validates :list_name, presence: true, length: { maximum: 50 }
  validates :list_item_type, presence: true, length: { maximum: 50 }

  mount_uploader :image, ItemListImgUploader

  has_many :items, dependent: :destroy  
  # has_many :users, through: :favorites
end
