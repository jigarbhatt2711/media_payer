class Episode < ApplicationRecord
  belongs_to :season

  # has_many :sub_episodes, class: "Episode", foreign_key: :parent_episode_id
  # belongs_to :parent_episode, class: "Episode", foreign_key: :parent_episode_id
end
