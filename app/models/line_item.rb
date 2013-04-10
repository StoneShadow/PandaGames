class LineItem < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :quantity
  belongs_to :game
  belongs_to :user
  belongs_to :order



  def total_price
     game.price*quantity
  end
end
