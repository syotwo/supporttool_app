class CreateItemListCategoryRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :item_list_category_relations do |t|
      t.integer :item_list_id
      t.integer :category_id

      t.timestamps
    end
  end
end
