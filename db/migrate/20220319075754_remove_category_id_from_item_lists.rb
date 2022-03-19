class RemoveCategoryIdFromItemLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :item_lists, :category_id, :integer
  end
end
