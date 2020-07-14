class AddItemListImgToItemLists < ActiveRecord::Migration[6.0]
  def change
    add_column :item_lists, :image, :string
  end
end
