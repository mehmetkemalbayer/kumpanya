class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :campaigns, :dueDate, :due_date
    rename_column :campaigns, :user_campaign_counter, :user_campaign_count
  end
end
