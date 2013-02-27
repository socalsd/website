class ShoppingCartController < ApplicationController
  before_filter :require_user, :find_cart
  
  def show
  end
  
  def update
    #parse the deletes
    (params[:delete] || {}).each do |id,value|
      if (value == "1")
        item = LineItem.find(id)
        if (item.order.user.id == @_current_user.id)
          item.destroy
        end
      end
    end
    #parse the quantities
    (params[:quantity] || {}).each do |id,value|
      item = LineItem.find(id)
      if (item.order.user.id == @_current_user.id)
        item.update_attribute(:quantity, value.to_i)
        puts value.to_i
      end
    end
    redirect_to :action => :show
  end
  
  def finalize
    @cart.update_attributes(:submitted => true, :placed_at => DateTime.now)
    UserMailer.order_placed(@cart).deliver
    render :template => "shopping_cart/placed"
  end
end
