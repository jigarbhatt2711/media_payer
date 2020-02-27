class PurchaseOption < ApplicationRecord
  has_many :purchases, dependent: :destroy
end
