class DropTableItemlists < ActiveRecord::Migration[6.1]
  def change
    drop_table :itemlists
  end
end
