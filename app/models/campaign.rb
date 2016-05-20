class Campaign < ActiveRecord::Base
	has_many :user_campaigns
	has_many :users, through: :user_campaigns	
	scope :active, -> { where('due_date > ?', Time.now) }
	scope :recent, -> { order("id desc").limit(5) }
	scope :popular, -> { order("user_campaigns_count desc").limit(5) }
	after_create :create_user_campaign
	
	private 			 
	def create_user_campaign
		self.user_campaigns.create(user_id: User.current_user.id, role_id: 1 )
	end
end
