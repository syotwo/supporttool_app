class Category < ApplicationRecord
    has_many :item_list_category_relations
    has_many :item_lists, through: :item_list_category_relations
end
