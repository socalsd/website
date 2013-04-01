class Order < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :account_manager_id, :delivered_at, :payment_at, :payment_type, :placed_at, :submitted
  has_many :line_items
  
  def account_manager
    (self.account_manager_id && User.find(self.account_manager_id)) || self.user.account_manager
  end
  
  def subtotal
    self.line_items.inject(0){|sum,item| sum+item.quantity*item.product.price}.to_f
  end
  
  def totalItems
    self.line_items.inject(0){|sum,item| sum+item.quantity}
  end
end
