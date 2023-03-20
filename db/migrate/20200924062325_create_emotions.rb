class CreateEmotions < ActiveRecord::Migration[6.1]
  def change
    create_table :emotions do |t|
      t.text :sheet
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
