class CampaignsController < ApplicationController    
    def new
        @campaign = Campaign.new
    end
    def create    
		params[:campaign][:due_date] = 7.days.from_now if (params[:campaign][:due_date].blank?)
        @campaign = Campaign.new(campaign_params)
		redirect_to new_campaign_path unless @campaign.save
                    
        flash[:notice] = t("Congrats")
        redirect_to @campaign        
           
    end
    def index
        @campaigns = Campaign.all
    end
    
    def show
        @campaign = Campaign.find(params[:id])
    end
    

    private
	def campaign_params
		params.require(:campaign).permit(:name, :due_date, :description)
	end	
    

end
