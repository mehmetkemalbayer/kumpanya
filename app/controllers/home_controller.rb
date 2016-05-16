class HomeController < ApplicationController
    def index
        @popular_campaigns = Campaign.popular
        @recent_campaigns = Campaign.recent
        @recent_user_campaigns = UserCampaign.recent
    end 
end
