class AddUserCampaignsCountToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :user_campaigns_count, :integer
  end
end
