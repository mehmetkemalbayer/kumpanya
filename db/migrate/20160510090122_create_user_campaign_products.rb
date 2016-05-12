class CreateUserCampaignProducts < ActiveRecord::Migration
  def change
    create_table :user_campaign_products do |t|
      t.timestamps null: false
    end
  end
end
