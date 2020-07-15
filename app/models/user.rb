class User < ApplicationRecord
    before_save { self.email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
    has_secure_password

    has_many :items
    has_many :item_lists

    has_many :favorites
    has_many :fav_item_lists, through: :favorites, source: :item_list

    def like(item_list)
        favorites.find_or_create_by(item_list_id: item_list.id)
    end

    def unlike(item_list)
        favorite = favorites.find(item_list_id: item_list.id)
        favorite.destroy if favorite
    end

end
