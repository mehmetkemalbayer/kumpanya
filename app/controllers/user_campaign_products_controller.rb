class UserCampaignProductsController < ApplicationController
    def create
        @userCampaignProduct = UserCampaignProduct.new
        @userCampaignProduct.user_campaign_id = params[:id]
        @userCampaignProduct.product_id = params[:product_id]
        @userCampaignProduct.save
        redirect_to UserCampaign.find(params[:id]).campaign
    end
    
    private
    def userCampaignProductParams
        params.permit(:id, :product_id)
    end
    
end
