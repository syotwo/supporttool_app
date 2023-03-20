class AddItemListImgToItemLists < ActiveRecord::Migration[6.1]
  def change
    add_column :item_lists, :image, :string
  end
end
