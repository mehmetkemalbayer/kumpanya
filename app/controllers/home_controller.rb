class HomeController < ApplicationController
    def index
        @popular_campaigns = Campaign.active.popular
        @recent_campaigns = Campaign.active.recent
        @recent_user_campaigns = UserCampaign.recent
    end 
end
