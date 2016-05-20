class UserCampaign < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign, counter_cache: true
	belongs_to :role
	has_many :products, through: :user_campaign_products	
	scope :recent, -> {Campaign.active.recent.joins(:user_campaigns).where("user_id = ?", User.current_user.id)}
	def new(campaign)
		@user_campaign = UserCampaign.new
		@user_campaign.user_id = User.current_user.id
		@user_campaign.campaign_id = campaign.id
		@user_campaign.save
	end
end
