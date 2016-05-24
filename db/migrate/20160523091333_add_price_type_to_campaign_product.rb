class AddPriceTypeToCampaignProduct < ActiveRecord::Migration
  def change
    add_reference :campaign_products, :price_type, index: true, foreign_key: true
  end
end
