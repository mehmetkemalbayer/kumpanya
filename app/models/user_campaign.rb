class UserCampaign < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign, counter_cache: true
	belongs_to :role
	has_many :products, through: :user_campaign_products	
	scope :recent, -> {Campaign.active.recent.joins(:user_campaigns).where("user_id = ?", current_user.id)}
	cattr_accessor :current_user
end
