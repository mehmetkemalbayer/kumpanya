class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :user_campaigns
  has_many :campaigns, through: :user_campaigns
  has_many :user_campaign_products, through: :user_campaigns 
  has_many :products, through: :user_campaign_products 
  cattr_accessor :current_user
end
