class User < ApplicationRecord
  has_many :purchases, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
