class UserCampaigns < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign
	belongs_to :role
	has_many :products, through: :user_campaign_products	
end
