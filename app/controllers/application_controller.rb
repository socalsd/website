class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do
    @breadcrumbs = [["Home", root_path]]
    @header_title = "Header Title"
  end
  
  #protected
  
  def current_user
    @_current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
  
  def require_user
    unless logged_in?
      flash[:error] = "You must be logged in to complete your request."
      redirect_to new_session_url # halts request cycle
    end
  end
  
  def find_cart
    @cart = @_current_user.cart
  end
end
