class CreateCampaignProducts < ActiveRecord::Migration
  def change
    create_table :campaign_products do |t|

      t.timestamps null: false
    end
  end
end
