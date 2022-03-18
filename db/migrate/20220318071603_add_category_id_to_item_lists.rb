class AddCategoryIdToItemLists < ActiveRecord::Migration[6.0]
  def change
    add_column :item_lists, :category_id, :integer
  end
end
