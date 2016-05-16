class CreateUserCampaign < ActiveRecord::Migration
  def change
    create_table :user_campaigns do |t|
      t.timestamps null: false
    end
  end
end
