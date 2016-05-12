class AddUserToUserCampaigns < ActiveRecord::Migration
  def change
    add_reference :user_campaigns, :user, index: true, foreign_key: true
  end
end
