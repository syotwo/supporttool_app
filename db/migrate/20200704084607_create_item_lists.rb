class CreateItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :item_lists do |t|
      t.string :list_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
