class Campaign < ActiveRecord::Base
	has_many :user_campaigns
	has_many :campaign_products
	has_many :products, through: :campaign_products
	has_many :users, through: :user_campaigns	
	
	scope :active, -> { where('due_date > ?', Time.now) }
	scope :recent, -> { order("id desc").limit(5) }
	scope :popular, -> { order("user_campaigns_count desc").limit(5) }
	accepts_nested_attributes_for :campaign_products	
end
