class LineItemsController < InheritedResources::Base
	before_filter :authenticate_user!


 

def index
  @line_items=LineItem.where(:user_id=>current_user.id)
end


 # 	def add_item
	# 	@line_item=LineItem.new
 #  # game=Game.find(params[:id])
 # # line_item=@game.line_item.build
 #    @line_item.game_id=params[:id]
 #   @line_item.user_id=current_user.id

 #    @line_item.save

 #    respond_to do |format|
      
 #      format.html { redirect_to(root_url,:notice=> 'Line Item was created')}  
 #     end


 #  end


 	def add_item
 		 current_item=LineItem.where(:game_id => params[:id]).first
     if current_item
     	current_item.quantity +=1
     else
     	current_item=line_item.build(:game_id => game_id)
     	current_item.user_id=current_user.id
     end


    current_item.save

    respond_to do |format|
      
      format.html { redirect_to(root_url,:notice=> 'Line Item was created')}  
     end


  end



  # def add_game(game_id)
  #    current_item=line_items.where(:game_id => game_id)
  #    if current_item
  #    	curreent_item.quantity +=1
  #    else
  #    	current_item=line_item.build(:game_id => game_id)
  #    	current_item.user_id=current_user.id
  #    end

  #    current_item
  # end


end
