class AddItemLinkToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :item_link, :text
  end
end
