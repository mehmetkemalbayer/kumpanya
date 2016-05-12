class AddProductToUserCampaignProducts < ActiveRecord::Migration
  def change
    add_reference :user_campaign_products, :product, index: true, foreign_key: true
  end
end
