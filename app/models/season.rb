class Season < ApplicationRecord
  has_many :episodes, dependent: :destroy
end
