class AddCategoryIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :category_id, :integer, :default => 3
  end
end
