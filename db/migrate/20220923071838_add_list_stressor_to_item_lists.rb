class AddListStressorToItemLists < ActiveRecord::Migration[6.0]
  def change
    add_column :item_lists, :list_stressor, :string
  end
end
