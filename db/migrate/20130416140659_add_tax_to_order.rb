class AddTaxToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :tax, :decimal, :default => 0
  end
end
