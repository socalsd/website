class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :discount, :quantity, :product_id
end
