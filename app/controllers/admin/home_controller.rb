class Admin::HomeController < ApplicationController
  def index
    @header_title = "Administration"
    @breadcrumbs = [["Admin", nil]]
  end
end
