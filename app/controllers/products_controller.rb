class ProductsController < ApplicationController
    def create
        if (product_params[:product_id].blank?)
       
            @product = Product.new(product_params[:product])
            @product.save
        else
            @product = Product.find(product_params[:product_id])
        end
        @user_campaign_product = UserCampaignProduct.new(user_campaign_product_params)
        @user_campaign_product.user_campaign = UserCampaign.where(user_id: params[:user_id]).where(campaign_id: params[:campaign_id]).first
        @user_campaign_product.product = @product
        @user_campaign_product.save
        redirect_to user_campaign_products_path
    end
    def index
        @product = Product.new
        @user_campaign = UserCampaign.where(user_id: params[:user_id]).where(campaign_id: params[:campaign_id]).first
        @user_campaign_product = UserCampaignProduct.where(user_campaign_id: @user_campaign.id).new
        @products = UserCampaignProduct.where(user_campaign_id: @user_campaign.id).joins(:product).select("products.id as id, products.name as name")
       
    end
    private
	def product_params
		params.require(:user_campaign_product).permit(:product_id, :product => [:name])
	end	
    
    def user_campaign_product_params
        params.require(:user_campaign_product).permit(:price, :price_type_id)
    end
end
