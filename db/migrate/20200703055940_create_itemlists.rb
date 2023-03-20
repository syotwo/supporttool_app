class CreateItemlists < ActiveRecord::Migration[6.1]
  def change
    create_table :itemlists do |t|
      t.string :list_name

      t.timestamps
    end
  end
end
