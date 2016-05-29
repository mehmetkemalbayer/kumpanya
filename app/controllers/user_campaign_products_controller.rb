class UserCampaignProductsController < ApplicationController

   	def create
        user_campaign_product = UserCampaign.find(params[:id]).user_campaign_products.create(product_id: params[:product_id])        
		flash[:warning] = user_campaign_product.errors.get(:product_id).to_sentence
		redirect_to Campaign.find(1)
	end
	
	private
	def user_campaign_product_params
		params.permit(:product_id, :id)
	end
end
