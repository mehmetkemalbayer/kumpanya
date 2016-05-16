class AddUserCampaingCounterCacheToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :user_campaign_counter, :integer
  end
end
