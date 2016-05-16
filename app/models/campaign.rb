class Campaign < ActiveRecord::Base
	has_many :user_campaigns
	has_many :users, through: :user_campaigns	
	scope :active, -> { where('due_date > ?', Time.now) }
	scope :recent, -> { order("id desc").limit(5) }
	scope :popular, -> { order("user_campaign_counter desc").limit(5) }
	
	def new
		@campaign = Campaign.new(campaign_params)
		campaign_params.dueDate = 7.days.from_now unless (campaign_params.has_key?(:dueDate))
		@campaign.save
		redirect_to homes_path
	end
	
	private
	def campaign_params
		params.require(:name).permit(:name, :dueDate)
	end				 
end
