class AddItemListRefToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :item_list, null: false, foreign_key: true
  end
end
