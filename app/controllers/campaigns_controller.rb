class CampaignsController < ApplicationController    
    def new
        @campaign = Campaign.new        
    end
    def create    
		params[:campaign][:due_date] = 7.days.from_now if (params[:campaign][:due_date].blank?)
        #@campaign = Campaign.new(campaign_params)
        @campaign = Campaign.create(campaign_params)
        UserCampaign.create(user_id: User.current_user.id, campaign_id: @campaign.id, role_id: 1)
		#redirect_to new_user_campaign_path unless @campaign.save
        #UserCampaign.create(user_id: User.current_user.id, role_id: 1, campaign_id: @campaign.id)       
        flash[:notice] = t("Congrats")                
        redirect_to @campaign   
    end
    def index
        @campaigns = Campaign.all
        
    end
    def update
        @campaign = Campaign.find(params[:id])
        @campaign.update_attributes(campaign_product_params)
        redirect_to @campaign
    end
    
    def show                     
        @campaign = Campaign.find(params[:id])
        @product = @campaign.products.new        
        @campaign_products = CampaignProduct.joins(:product).where("campaign_id = ?", @campaign.id).select("products.name, products.id, products.id as product_id, campaign_products.product_id, campaign_products.campaign_id, campaign_products.price, campaign_products.price_type_id").all
        @userCampaign = UserCampaign.where("user_id = ?", User.current_user.id).where("campaign_id = ?", params[:id]).first
        @userCampaignProduct = UserCampaign.where("user_campaign_id = ?", @userCampaign.id)
    end
    
    private
	def campaign_params
		params.require(:campaign).permit(:name, :due_date, :description)
	end	
    def campaign_product_params
        params.require(:campaign).permit(:campaign_products_attributes => [:id, :price, :price_type_id, :product_attributes => [:name, :id]])
    end
    
end
