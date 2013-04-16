class Order < ActiveRecord::Base
	PAYMENT_TYPE=["check","credit card"]
  attr_accessible :address, :email, :name, :pay_type, :user_id,:province_id
 validates :pay_type, inclusion: PAYMENT_TYPE
  belongs_to :user
  belongs_to :province
  has_many :line_items

    def add_order_from_items(users_id)
     items=LineItem.where(:user_id=>users_id)
     items.each do |item|
     	item.user_id=nil
     	items << item
  end
end



   def test(users_id)
     items=LineItem.where(:user_id=>users_id)
   	end
end
