class UserCampaignProduct < ActiveRecord::Base
	belongs_to :user_campaign
	belongs_to :product
	validates_uniqueness_of :product_id,  scope: :user_campaign_id
end
