class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }

  has_many :item_lists, dependent: :destroy
  has_many :items
  has_many :emotions

  # has_many :favorites
  # has_many :fav_item_lists, through: :favorites, source: :item_list
end
