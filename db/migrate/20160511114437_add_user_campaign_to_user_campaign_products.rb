class AddUserCampaignToUserCampaignProducts < ActiveRecord::Migration
  def change
    add_reference :user_campaign_products, :user_campaign, index: true, foreign_key: true
  end
end
