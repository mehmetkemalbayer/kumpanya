class AddCampaignToCampaignProduct < ActiveRecord::Migration
  def change
    add_reference :campaign_products, :campaign, index: true, foreign_key: true
  end
end
