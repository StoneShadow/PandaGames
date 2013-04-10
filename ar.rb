require 'active_record'
require 'logger'




load 'app/models/line_item.rb'
load 'app/models/order.rb'




ActiveRecord::Base.establish_connection  :adapter  => 'sqlite3',  :database => "db/development.sqlite3" 