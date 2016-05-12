class Role < ActiveRecord::Base
	has_many :user_groups
	has_many :user_campaigns
end
