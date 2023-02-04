class AddMoodToEmotions < ActiveRecord::Migration[6.0]
  def change
    add_column :emotions, :mood, :string
  end
end
