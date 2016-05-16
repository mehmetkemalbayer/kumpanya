class CampaignController < ApplicationController
	has_many :user_campaign
	scope :recent, order("id desc").limit(5)
	scope :popular, order("user_campaign_counter desc").limit(5)
					 
end
