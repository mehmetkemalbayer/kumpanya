class AddPriceTypeToUserCampaignProducts < ActiveRecord::Migration
  def change
    add_reference :user_campaign_products, :price_type, index: true, foreign_key: true
  end
end
