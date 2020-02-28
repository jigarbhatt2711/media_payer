class Episode < ApplicationRecord
  belongs_to :season

  has_many :child_episodes, class_name: "Episode", foreign_key: 'parent_episode_id'
  belongs_to :parent_episode, class_name: "Episode"

  validates :title, :episode_number, presence: true
end
