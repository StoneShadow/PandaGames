class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst, :default => 0
      t.decimal :gst, :default => 0
      t.decimal :hst, :default => 0

      t.timestamps
    end
  end
end
