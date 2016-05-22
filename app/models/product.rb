class Product < ActiveRecord::Base
	has_many :user_campaign_products
	has_many :user_campaigns, through: :user_campaign_products
	
end
