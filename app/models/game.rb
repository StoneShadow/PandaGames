class Game < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title, :category_id
  belongs_to :category

  has_many :line_items
end
