class AddMoodToEmotions < ActiveRecord::Migration[6.1]
  def change
    add_column :emotions, :mood, :string
  end
end
