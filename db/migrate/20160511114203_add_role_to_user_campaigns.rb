class AddRoleToUserCampaigns < ActiveRecord::Migration
  def change
    add_reference :user_campaigns, :role, index: true, foreign_key: true
  end
end
