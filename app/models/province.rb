class Province < ActiveRecord::Base
  attr_accessible :gst, :hst, :name, :pst
  has_many :line_items
end
