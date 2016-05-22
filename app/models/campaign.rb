class Campaign < ActiveRecord::Base
	has_many :user_campaigns
	has_many :users, through: :user_campaigns	
	has_many :products, through: :user_campaign_products
	scope :active, -> { where('due_date > ?', Time.now) }
	scope :recent, -> { order("id desc").limit(5) }
	scope :popular, -> { order("user_campaigns_count desc").limit(5) }
	
end
