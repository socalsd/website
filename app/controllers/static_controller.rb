class StaticController < ApplicationController
  def main
    render :layout => "home"
  end
  
  def test
    puts "hello"
    #render :template => "static/test", :layout => false
    render :template => "static/test", :layout => "bare"
  end
end
