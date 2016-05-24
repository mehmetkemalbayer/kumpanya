class Product < ActiveRecord::Base
	has_many :campaign_products
	has_many :campaigns, through: :campaign_products
	has_many :user_campaign_products
	has_many :user_campaigns, through: :user_campaign_products
	
	def create
        @product = Product.new(product_params)
        @product.save
        @campaign = Campaign.find(params[:campaign_id])
        @campaign_product = CampaignProduct.new(@campaign, @product)
        @campaign_product.save
	end
    
	def product_params
      params.require(:product).permit(:name, :campaign_id)
	end	
end
