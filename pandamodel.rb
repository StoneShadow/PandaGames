load 'ar.rb'

#new_order=Order.find(11)
#new_order.pay_type="check"
#puts new_order.line_items.count
#order.test(1)

#puts new_order.inspect


items=LineItems.where(:order_id => nil)


puts items.size