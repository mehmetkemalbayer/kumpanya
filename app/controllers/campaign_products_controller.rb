class CampaignProductsController < ApplicationController
    accept_nested_attributes_for :product
    
    def create
        @campaign_product = CampaignProduct.new(campaign_product_params)       
        @campaign_product.save
        redirect_to Campaign.find(campaign_params[:campaign_id])
    end
    
    def campaign_product_params
		params.require(:campaign_product).permit([:price, :price_type_id])
    end	
    
  
end
