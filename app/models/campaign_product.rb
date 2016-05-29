class CampaignProduct < ActiveRecord::Base
    belongs_to :campaign
    belongs_to :product
    
end
