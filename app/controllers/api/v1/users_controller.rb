require 'action_view'
require 'action_view/helpers'
include ActionView::Helpers::DateHelper

class Api::V1::UsersController < ApplicationController
  def library
    # get user
    if params[:user_id].present?
      user = User.find params[:user_id]
      # get user's active purchases
      purchases = user.purchases.where(created_at: Time.now-3.days..Time.now).order(:created_at)

      purchase_array = []
      purchases.each do |purchase|
        purchase_hash = {}
        
        purchase_hash[:purchase_item] = "#{purchase.purchasable.title} #{purchase.purchasable_type}"
        purchase_hash[:season_number] = purchase.purchasable.season_number if (purchase.purchasable_type == "Season")
        purchase_hash[:remaining_time] = "#{distance_of_time_in_words((Time.now-3.days) - purchase.created_at)} Remaining"
        purchase_array.push(purchase_hash)
      end
      
      render json: {
        library: purchase_array
      }
    else
      render json: {user_id: "can't be blank"}      
    end
  end
end
