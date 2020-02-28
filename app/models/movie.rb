class Movie < ApplicationRecord
  has_many :purchases, as: :purchasable, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end
