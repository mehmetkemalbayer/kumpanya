class Campaign < ActiveRecord::Base
	has_many :users, through: :user_campaigns
end
