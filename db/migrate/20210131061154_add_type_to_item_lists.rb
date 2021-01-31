class AddTypeToItemLists < ActiveRecord::Migration[6.0]
  def change
    add_column :item_lists, :type, :string
  end
end
