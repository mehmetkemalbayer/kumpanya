class CampaignProduct < ActiveRecord::Base
    belongs_to :campaign
    belongs_to :product
    accepts_nested_attributes_for :product
end
