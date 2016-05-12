class AddRoleToUserGroup < ActiveRecord::Migration
  def change
    add_reference :user_groups, :role, index: true, foreign_key: true
  end
end
