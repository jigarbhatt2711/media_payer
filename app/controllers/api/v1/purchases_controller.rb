class Api::V1::PurchasesController < ApplicationController
  def create
    purchase = Purchase.new(purchase_params)

    if purchase.valid?
      user = User.find params[:user_id]
      if user.purchases.where(created_at: Time.now-3.days..Time.now, purchasable_id: params[:purchasable_id],purchasable_type: params[:purchasable_type]).any?
        render json: {
          message: "Already available in your library. Please check your it."
        }
      else
        purchase.save
        render json: {
          message: "User purchased successfully",
          data: purchase
        }
      end
        
    else
      render json: purchase.errors
    end
  end

  private
  def purchase_params
    params.permit(:user_id, :purchase_option_id, :purchasable_type, :purchasable_id)
  end
end
