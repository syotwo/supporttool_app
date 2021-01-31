class RenameTypeColumnToItemLists < ActiveRecord::Migration[6.0]
  def change
    rename_column :item_lists, :type, :list_item_type
  end
end
