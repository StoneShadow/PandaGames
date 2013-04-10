class Order < ActiveRecord::Base
	PAYMENT_TYPE=["check","credit card"]
  attr_accessible :address, :email, :name, :pay_type, :user_id
 validates :pay_type, inclusion: PAYMENT_TYPE
  belongs_to :user
end
