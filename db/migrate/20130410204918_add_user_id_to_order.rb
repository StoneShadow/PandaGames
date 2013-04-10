class AddUserIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer, :default => 1
  end
end
