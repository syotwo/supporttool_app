class Item < ApplicationRecord
  belongs_to :user

  validates :item_name, presence: true, length: { maximum: 50 }
end
