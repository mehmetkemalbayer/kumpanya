class AddPriceToUserCampaignProducts < ActiveRecord::Migration
  def change
    add_column :user_campaign_products, :price, :decimal
  end
end
