class FinderController < ApplicationController


	 def search_results
    @keyword = params[:keyword]
    
    @games = Game.where("title LIKE ? or description like ?", "%#{@keyword}%","%#{@keyword}%")
  end
end
