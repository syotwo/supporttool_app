class AddListStressorToItemLists < ActiveRecord::Migration[6.1]
  def change
    add_column :item_lists, :list_stressor, :string
  end
end
