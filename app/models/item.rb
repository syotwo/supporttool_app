class Item < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 50 }
end
