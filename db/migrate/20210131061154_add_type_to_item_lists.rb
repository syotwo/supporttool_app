class AddTypeToItemLists < ActiveRecord::Migration[6.1]
  def change
    add_column :item_lists, :type, :string
  end
end
