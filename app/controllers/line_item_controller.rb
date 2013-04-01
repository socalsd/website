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
  
  # RESTful add-to-cart find or create line item with product_id, then increment quantity
  def create
    item = @cart.line_items.first_or_create(:product_id => params[:product_id])
    item.update_column(:quantity, (item.quantity || 0) + 1)
    puts "hello world"
    
    #respond_to do |format|
      # format.html # AJAX-only
      #format.json { render json: @cart }
      #format.js { render :handlers => [:erb] }
    #end
   
  end
end
