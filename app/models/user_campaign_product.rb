class UserCampaignProduct < ActiveRecord::Base
	belongs_to :user_campaign
	belongs_to :product
	accepts_nested_attributes_for :user_campaign
	
end
