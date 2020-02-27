class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.integer :episode_number
      t.string :title
      t.text :plot

      t.timestamps
    end
  end
end
