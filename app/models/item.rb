class Item < ApplicationRecord
  belongs_to :user

  validates :item_name, presence: true, length: { maximum: 150 }
  validates :img, presence: true

  mount_uploader :img, ImgUploader
end
