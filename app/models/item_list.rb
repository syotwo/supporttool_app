class ItemList < ApplicationRecord
  belongs_to :user

  validates :list_name, presence: true, length: { maximum: 50 }

  mount_uploader :image, ItemListImgUploader

  has_many :favorites
  has_many :users, through: :favorites
end
