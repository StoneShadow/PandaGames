class OrdersController < InheritedResources::Base
  before_filter :authenticate_user!

	 def new


         @items_in_cart=LineItem.where(:user_id=>current_user.id)

         sum=0.0
         if @items_in_cart.empty?
         	redirect_to root_url, notice: "cart is empyt"
         	return
         else
              @items_in_cart.each do |item|
     

               sum+=item.total_price
      
            end
         end

         @order=Order.new
         @subtotal=sum
         @order.email=current_user.email
	 end



   def index
    @orders=Order.where(:user_id=>current_user.id)
     
   end


       def create

       		 	@order=Order.new(params[:order])
	 	items=LineItem.where(:user_id=>current_user.id)

    sum=0.0
	 	items.each do |item|
	 		item.user_id=nil
	 	#	item.order_id=@order.id

      sum+=item.total_price
	 		#item.save
	 	end
      @order.subtotal=sum
	    @order.user_id=current_user.id
    # @order = Order.new(order_params)
    # @order.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @order.save
          items.each do |item|
      item.order_id=@order.id

      
      item.save
    end
        format.html { redirect_to root_url, notice: 
          'Thank you for your order.' }
        format.json { render action: 'show', status: :created,
          location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors,
          status: :unprocessable_entity }
      end
    end
  end




end
