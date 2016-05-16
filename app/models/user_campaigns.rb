class UserCampaigns < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign, counter_cache: true
	belongs_to :role
	has_many :products, through: :user_campaign_products	
end
