class Item < ApplicationRecord
  belongs_to :user
  belongs_to :item_list, class_name: 'ItemList', optional: true

  validates :item_name, presence: true, length: { maximum: 150 }

  mount_uploader :img, ImgUploader
end
