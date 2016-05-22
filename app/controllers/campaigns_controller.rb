class CampaignsController < ApplicationController    
    def new
        @user = User.find(params[:user_id])
        @campaign = Campaign.new        
    end
    def create    
		params[:campaign][:due_date] = 7.days.from_now if (params[:campaign][:due_date].blank?)
        
        @campaign = Campaign.new(campaign_params)
		redirect_to new_user_campaign_path unless @campaign.save
        @user_campaign = UserCampaign.new
        @user_campaign.campaign_id = @campaign.id
		@user_campaign.user_id = params[:user_id]
		@user_campaign.role_id = 1    
        redirect_to new_user_campaign_path unless @user_campaign.save        
        flash[:notice] = t("Congrats")
        redirect_to user_campaign_products_path(params[:user_id], @campaign)        
           
    end
    def index
        @campaigns = Campaign.all
        
    end
    
    def show
        @campaign = Campaign.find(params[:id])
        @user_campaign = UserCampaign.where(user_id: params[:user_id]).where(campaign_id: @campaign.id).first
        puts @user_campaign.id
        @product = Product.new
        @user_campaign_product = UserCampaignProduct.new(user_campaign_id: @user_campaign.id, product_id: @product.id)
    end
    

    private
	def campaign_params
		params.require(:campaign).permit(:name, :due_date, :description)
	end	
    

end
