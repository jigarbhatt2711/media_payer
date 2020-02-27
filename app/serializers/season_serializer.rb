class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :episodes
  has_many :episodes

  def episodes
    object.episodes.order(:episode_number)
  end
end
