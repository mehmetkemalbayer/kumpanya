class CampaignsController < ApplicationController    
    def new
        @campaign = Campaign.new        
    end
    def create    
		params[:campaign][:due_date] = 7.days.from_now if (params[:campaign][:due_date].blank?)
        
        @campaign = Campaign.new(campaign_params)
		redirect_to new_user_campaign_path unless @campaign.save
               
        flash[:notice] = t("Congrats")                
        redirect_to @campaign   
    end
    def index
        @campaigns = Campaign.all
        
    end
    
    def show      
        @product = Product.new
        @campaign_product = CampaignProduct.new
        @campaign = Campaign.find(params[:id])
        @campaign_products = Product.joins(:campaign_products).where("campaign_id = ?", @campaign.id)
    end
    

    private
	def campaign_params
		params.require(:campaign).permit(:name, :due_date, :description)
	end	
    
    
end
