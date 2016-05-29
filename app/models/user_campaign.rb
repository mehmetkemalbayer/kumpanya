class UserCampaign < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign, counter_cache: true
	belongs_to :role
	has_many :user_campaign_products
	has_many :products, through: :user_campaign_products	
	accepts_nested_attributes_for :campaign
	scope :recent, -> {Campaign.active.recent.joins(:user_campaigns).where("user_id = ?", 1)}
end
