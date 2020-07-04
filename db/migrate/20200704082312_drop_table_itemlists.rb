class DropTableItemlists < ActiveRecord::Migration[6.0]
  def change
    drop_table :itemlists
  end
end
