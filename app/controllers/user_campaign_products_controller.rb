class UserCampaignProductsController < ApplicationController

   	def create
        UserCampaign.find(params[:id]).user_campaign_products.create(product_id: params[:product_id])        
		redirect_to Campaign.find(1)
	end
	
	private
	def user_campaign_product_params
		params.permit(:product_id, :id)
	end
end
