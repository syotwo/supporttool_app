class ItemListCategoryRelation < ApplicationRecord
    belongs_to :item_list
    belongs_to :category
end
