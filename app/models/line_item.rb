class LineItem < ActiveRecord::Base
  attr_accessible :game_id, :user_id
  belongs_to :game
  belongs_to :user
end
