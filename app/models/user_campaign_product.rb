class UserCampaignProduct < ActiveRecord::Base
	belongs_to :user_campaign
	belongs_to :product
end
