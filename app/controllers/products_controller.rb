class ProductsController < ApplicationController
    def create
        @product = Product.new(product_params)
        @product.save
        @campaign = Campaign.find(campaign_params[:campaign_id])
        @campaign_product = CampaignProduct.new
        @campaign_product.product_id = @product.id
        @campaign_product.campaign_id = @campaign.id
        @campaign_product.price = campaign_product_params[:campaign_product][:price]        
        @campaign_product.price_type_id = campaign_product_params[:campaign_product][:price_type_id]
        @campaign_product.save
        redirect_to @campaign
    end
    def index
        @product = Product.new
        @user_campaign = UserCampaign.where(user_id: params[:user_id]).where(campaign_id: params[:campaign_id]).first
        @user_campaign_product = UserCampaignProduct.where(user_campaign_id: @user_campaign.id).new
        @products = UserCampaignProduct.where(user_campaign_id: @user_campaign.id).joins(:product).select("products.id as id, products.name as name")
       
    end
    private
	def product_params
		params.require(:product).permit(:name)
	end	
    
    def campaign_params
		params.permit(:campaign_id)
    end	
    
    def campaign_product_params
        params.require(:product).permit(:campaign_product=> [:price, :price_type_id])
    end
    
end
