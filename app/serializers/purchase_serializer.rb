class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :purchasable, :user, :purchase_option

  def purchasable
    object.purchasable
  end

  def user
    object.user
  end

  def purchase_option
    object.purchase_option
  end
end
