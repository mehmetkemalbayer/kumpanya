class UserCampaignController < ApplicationController
    scope :active, -> { where('dueDate > ?', now) }
	scope :recent, -> { order('id desc')}
end
