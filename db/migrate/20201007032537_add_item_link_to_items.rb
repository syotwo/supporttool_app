class AddItemLinkToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :item_link, :text
  end
end
