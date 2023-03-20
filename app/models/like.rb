class Like < ApplicationRecord
    belongs_to :user
    belongs_to :item_list

    validates_uniqueness_of :item_list_id, scope: :user_id
end
