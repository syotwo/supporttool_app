class AddImgToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :img, :string
  end
end
