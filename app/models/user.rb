class User < ActiveRecord::Base
	has_many :ucampaigns, through: :user_campaigns
end
