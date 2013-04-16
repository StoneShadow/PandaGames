class AddProvinceIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :province_id, :integer,, :default => 1
  end
end
