class AddPriceToCampaignProduct < ActiveRecord::Migration
  def change
    add_column :campaign_products, :price, :decimal
  end
end
