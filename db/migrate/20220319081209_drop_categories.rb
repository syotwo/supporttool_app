class DropCategories < ActiveRecord::Migration[6.0]
  def change
    drop_table :categories do |t|
      t.string :name, null: false
    end
  end
end
