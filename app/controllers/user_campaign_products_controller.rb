class UserCampaignProductsController < ApplicationController

    def create
        @user_campaign_product = UserCampaignProduct.new(user_campaign_product_params)
        @user_campaign_product.save
        redirect_to @user_campaign_product.user_campaign.campaign
    end
    private
	def user_campaign_product_params
		params.require(:user_campaign_product).permit(:name, :price, :price_type_id)
	end	
end
