class AddProductToCampaignProduct < ActiveRecord::Migration
  def change
    add_reference :campaign_products, :product, index: true, foreign_key: true
  end
end
