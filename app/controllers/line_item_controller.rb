class LineItemController < ApplicationController
  before_filter :require_user, :find_cart
  
  def index
  end

  # RESTful remove from cart
  def destroy
  end
  
  # psuedo-RESTful (called without LineItem id); e.g., add 1, or remove 1 from cart
  # PUT w/ params for product_id, change-quantity (+1, -1)
  # returns XML of updated cart
  def update
  end
  
end
