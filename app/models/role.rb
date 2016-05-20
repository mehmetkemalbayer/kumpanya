class Role < ActiveRecord::Base
	has_many :user_groups
	has_many :user_campaigns
	enum shortDesc: {admin: 0, contributor: 1}
end
