class AddCampaignToUserCampaigns < ActiveRecord::Migration
  def change
    add_reference :user_campaigns, :campaign, index: true, foreign_key: true
  end
end
