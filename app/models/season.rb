class Season < ApplicationRecord
  has_many :episodes, dependent: :destroy
  has_many :purchases, as: :purchasable, dependent: :destroy

  validates :title, :season_number, presence: true
  validates :title, uniqueness: true
end
