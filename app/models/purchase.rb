class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchase_option
  belongs_to :purchasable, polymorphic: true, optional: true

  validates :purchasable_id, :purchasable_type, presence: true
end
