class Item < ApplicationRecord
  # belongs_to :user
  belongs_to :item_list

  validates :item_name, presence: true, length: { maximum: 150 }
  validates :img, presence: true

  mount_uploader :img, ImgUploader
end
