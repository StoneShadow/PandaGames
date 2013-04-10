class AddSubtotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal, :default => 0
  end
end
