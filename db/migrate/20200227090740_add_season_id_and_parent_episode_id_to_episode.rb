class AddSeasonIdAndParentEpisodeIdToEpisode < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :season_id, :integer
    add_index :episodes, :season_id
    add_column :episodes, :parent_episode_id, :integer
    add_index :episodes, :parent_episode_id
  end
end
